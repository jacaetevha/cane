require 'java'
require 'cane/jruby/visitors'

class AstBuilder
  def self.build s
    JRuby::ast_for(s)
  end
end

# Wrapper object around sexps returned from JRuby's AST parser.
class RubyAst < Struct.new(:file_name, :max_allowed_complexity,
                           :sexps, :exclusions)

  def initialize(*args)
    super
    self.anon_method_add = true
  end

  def violations
    process_ast(sexps).
      select {|nesting, complexity| complexity > max_allowed_complexity }.
      map {|x| {
        file:        file_name,
        label:       x.first,
        value:       x.last,
        description: "Methods exceeded maximum allowed ABC complexity"
      }}
  end

  protected

  # Stateful flag used to determine whether we are currently parsing an
  # anonymous class. See #container_label.
  attr_accessor :anon_method_add

  # Recursive function to process an AST. The `complexity` variable mutates,
  # which is a bit confusing. `nesting` does not.
  def process_ast(node, complexity = {}, nesting = [], visitor = AbstractAstVisitor.new)
    node.accept visitor
    return complexity

    if method_nodes.include?(node[0].node_name)
      nesting = nesting + [label_for(node)]
      desc = method_description(node, *nesting)
      unless excluded?(desc)
        complexity[desc] = calculate_abc(node)
      end
    elsif parent = container_label(node)
      nesting = nesting + [parent]
    end

    if node.is_a? Array
      node[1..-1].each {|n| process_ast(n, complexity, nesting, visitor) if n }
    end
    complexity
  end

  def calculate_abc(method_node)
    a = count_nodes(method_node, assignment_nodes)
    b = count_nodes(method_node, branch_nodes) + 1
    c = count_nodes(method_node, condition_nodes)
    abc = Math.sqrt(a**2 + b**2 + c**2).round
    abc
  end

  def container_label(node)
    if container_nodes.include?(node[0])
      # def foo, def self.foo
      node[1][-1][1]
    elsif node[0] == :method_add_block
      if anon_method_add
        # Class.new do ...
        "(anon)"
      else
        # MyClass = Class.new do ...
        # parent already added when processing a parent node
        anon_method_add = true
        nil
      end
    elsif node[0] == :assign && node[2][0] == :method_add_block
      # MyClass = Class.new do ...
      self.anon_method_add = false
      node[1][-1][1]
    end
  end

  def label_for(node)
    # A default case is deliberately omitted since I know of no way this
    # could fail and want it to fail fast.
    node.detect {|x|
      [:@ident, :@op, :@kw, :@const, :@backtick].include?(x[0])
    }[1]
  end

  def count_nodes(node, types)
    node.flatten.select {|n| types.include?(n) }.length
  end

  def assignment_nodes
    [:assign, :opassign]
  end

  def method_nodes
    [:def, :defs]
  end

  def container_nodes
    [:class, :module]
  end

  def branch_nodes
    [:call, :fcall, :brace_block, :do_block]
  end

  def condition_nodes
    [:==, :===, :"<>", :"<=", :">=", :"=~", :>, :<, :else, :"<=>"]
  end

  METH_CHARS = { def: '#', defs: '.' }

  def excluded?(method_description)
    exclusions.include?(method_description)
  end

  def method_description(node, *modules, meth_name)
    separator = METH_CHARS.fetch(node.first)
    description = [modules.join('::'), meth_name].join(separator)
  end
end
