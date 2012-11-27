if RUBY_PLATFORM =~ /java/
  require 'cane/abc_check_jruby'
else
  require 'cane/abc_check_mri_1_9'
end

require 'set'
require 'cane/file'
require 'cane/task_runner'

module Cane

  # Creates violations for methods that are too complicated using a simple
  # algorithm run against the parse tree of a file to count assignments,
  # branches, and conditionals. Borrows heavily from metric_abc.
  class AbcCheck < Struct.new(:opts)

    def self.key; :abc; end
    def self.name; "ABC check"; end
    def self.options
      {
        abc_glob: ['Glob to run ABC metrics over',
                      default: '{app,lib}/**/*.rb',
                      variable: 'GLOB',
                      clobber: :no_abc],
        abc_max:  ['Ignore methods under this complexity',
                      default: 15,
                      cast:    :to_i,
                      clobber: :no_abc],
        abc_exclude: ['Exclude method from analysis (eg. Foo::Bar#method)',
                         variable: 'METHOD',
                         type: Array,
                         default: [],
                         clobber: :no_abc],
        no_abc:   ['Disable ABC checking',
                      cast: ->(x) { !x }]
      }
    end

    def violations
      return [] if opts[:no_abc]

      order worker.map(file_names) {|file_name|
        find_violations(file_name)
      }.flatten
    end

    protected

    def find_violations(file_name)
      ast = AstBuilder.build(Cane::File.contents(file_name))
      case ast
      when nil
        InvalidAst.new(file_name)
      else
        RubyAst.new(file_name, max_allowed_complexity, ast, exclusions)
      end.violations
    end

    # Null object for when the file cannot be parsed.
    class InvalidAst < Struct.new(:file_name)
      def violations
        [{file: file_name, description: "Files contained invalid syntax"}]
      end
    end

    def file_names
      Dir[opts.fetch(:abc_glob)]
    end

    def order(result)
      result.sort_by {|x| x[:value].to_i }.reverse
    end

    def max_allowed_complexity
      opts.fetch(:abc_max)
    end

    def exclusions
      opts.fetch(:abc_exclude, []).flatten.to_set
    end

    def worker
      Cane.task_runner(opts)
    end
  end
end
