class RootNodeVisitor < AbstractAstVisitor
  def accept node
    node.body_node.accept self
  end
end
