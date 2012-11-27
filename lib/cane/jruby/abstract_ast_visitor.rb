class AbstractAstVisitor
  include org.jruby.ast.visitor.NodeVisitor
  VERBOSE = true
  
  def verbose(node, visitor)
    puts "Visiting #{node.to_s} with #{visitor}" if VERBOSE
  end

  def visitAliasNode(node)
    verbose node, AliasNodeVisitor
    AliasNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ALIASNODE
  end

  def visitAndNode(node)
    verbose node, AndNodeVisitor
    AndNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ANDNODE
  end

  def visitArgsCatNode(node)
    verbose node, ArgsCatNodeVisitor
    ArgsCatNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARGSCATNODE
  end

  def visitArgsNode(node)
    verbose node, ArgsNodeVisitor
    ArgsNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARGSNODE
  end

  def visitAliasNode(node)
    verbose node, AliasNodeVisitor
    AliasNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ALIASNODE
  end

  def visitAndNode(node)
    verbose node, AndNodeVisitor
    AndNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ANDNODE
  end

  def visitArgsCatNode(node)
    verbose node, ArgsCatNodeVisitor
    ArgsCatNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARGSCATNODE
  end

  def visitArgsNode(node)
    verbose node, ArgsNodeVisitor
    ArgsNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARGSNODE
  end

  def visitArgsPushNode(node)
    verbose node, ArgsPushNodeVisitor
    ArgsPushNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARGSPUSHNODE
  end

  def visitArrayNode(node)
    verbose node, ArrayNodeVisitor
    ArrayNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ARRAYNODE
  end

  def visitAttrAssignNode(node)
    verbose node, AttrAssignNodeVisitor
    AttrAssignNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ATTRASSIGNNODE
  end

  def visitBackRefNode(node)
    verbose node, BackRefNodeVisitor
    BackRefNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BACKREFNODE
  end

  def visitBeginNode(node)
    verbose node, BeginNodeVisitor
    BeginNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BEGINNODE
  end

  def visitBignumNode(node)
    verbose node, BignumNodeVisitor
    BignumNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BIGNUMNODE
  end

  def visitBlockArg18Node(node)
    verbose node, BlockArg18NodeVisitor
    BlockArg18NodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BLOCKARG18NODE
  end

  def visitBlockArgNode(node)
    verbose node, BlockArgNodeVisitor
    BlockArgNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BLOCKARGNODE
  end

  def visitBlockNode(node)
    verbose node, BlockNodeVisitor
    BlockNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BLOCKNODE
  end

  def visitBlockPassNode(node)
    verbose node, BlockPassNodeVisitor
    BlockPassNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BLOCKPASSNODE
  end

  def visitBreakNode(node)
    verbose node, BreakNodeVisitor
    BreakNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::BREAKNODE
  end

  def visitCallNode(node)
    verbose node, CallNodeVisitor
    CallNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CALLNODE
  end

  def visitCaseNode(node)
    verbose node, CaseNodeVisitor
    CaseNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CASENODE
  end

  def visitClassNode(node)
    verbose node, ClassNodeVisitor
    ClassNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CLASSNODE
  end

  def visitClassVarAsgnNode(node)
    verbose node, ClassVarAsgnNodeVisitor
    ClassVarAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CLASSVARASGNNODE
  end

  def visitClassVarDeclNode(node)
    verbose node, ClassVarDeclNodeVisitor
    ClassVarDeclNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CLASSVARDECLNODE
  end

  def visitClassVarNode(node)
    verbose node, ClassVarNodeVisitor
    ClassVarNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CLASSVARNODE
  end

  def visitColon2Node(node)
    verbose node, Colon2NodeVisitor
    Colon2NodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::COLON2NODE
  end

  def visitColon3Node(node)
    verbose node, Colon3NodeVisitor
    Colon3NodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::COLON3NODE
  end

  def visitConstDeclNode(node)
    verbose node, ConstDeclNodeVisitor
    ConstDeclNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CONSTDECLNODE
  end

  def visitConstNode(node)
    verbose node, ConstNodeVisitor
    ConstNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::CONSTNODE
  end

  def visitDAsgnNode(node)
    verbose node, DAsgnNodeVisitor
    DAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DASGNNODE
  end

  def visitDefinedNode(node)
    verbose node, DefinedNodeVisitor
    DefinedNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DEFINEDNODE
  end

  def visitDefnNode(node)
    verbose node, DefnNodeVisitor
    DefnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DEFNNODE
  end

  def visitDefsNode(node)
    verbose node, DefsNodeVisitor
    DefsNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DEFSNODE
  end

  def visitDotNode(node)
    verbose node, DotNodeVisitor
    DotNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DOTNODE
  end

  def visitDRegxNode(node)
    verbose node, DRegxNodeVisitor
    DRegxNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DREGXNODE
  end

  def visitDStrNode(node)
    verbose node, DStrNodeVisitor
    DStrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DSTRNODE
  end

  def visitDSymbolNode(node)
    verbose node, DSymbolNodeVisitor
    DSymbolNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DSYMBOLNODE
  end

  def visitDVarNode(node)
    verbose node, DVarNodeVisitor
    DVarNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DVARNODE
  end

  def visitDXStrNode(node)
    verbose node, DXStrNodeVisitor
    DXStrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::DXSTRNODE
  end

  def visitEncodingNode(node)
    verbose node, EncodingNodeVisitor
    EncodingNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ENCODINGNODE
  end

  def visitEnsureNode(node)
    verbose node, EnsureNodeVisitor
    EnsureNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ENSURENODE
  end

  def visitEvStrNode(node)
    verbose node, EvStrNodeVisitor
    EvStrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::EVSTRNODE
  end

  def visitFalseNode(node)
    verbose node, FalseNodeVisitor
    FalseNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FALSENODE
  end

  def visitFCallNode(node)
    verbose node, FCallNodeVisitor
    FCallNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FCALLNODE
  end

  def visitFixnumNode(node)
    verbose node, FixnumNodeVisitor
    FixnumNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FIXNUMNODE
  end

  def visitFlipNode(node)
    verbose node, FlipNodeVisitor
    FlipNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FLIPNODE
  end

  def visitFloatNode(node)
    verbose node, FloatNodeVisitor
    FloatNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FLOATNODE
  end

  def visitForNode(node)
    verbose node, ForNodeVisitor
    ForNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::FORNODE
  end

  def visitGlobalAsgnNode(node)
    verbose node, GlobalAsgnNodeVisitor
    GlobalAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::GLOBALASGNNODE
  end

  def visitGlobalVarNode(node)
    verbose node, GlobalVarNodeVisitor
    GlobalVarNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::GLOBALVARNODE
  end

  def visitHashNode(node)
    verbose node, HashNodeVisitor
    HashNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::HASHNODE
  end

  def visitIfNode(node)
    verbose node, IfNodeVisitor
    IfNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::IFNODE
  end

  def visitInstAsgnNode(node)
    verbose node, InstAsgnNodeVisitor
    InstAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::INSTASGNNODE
  end

  def visitInstVarNode(node)
    verbose node, InstVarNodeVisitor
    InstVarNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::INSTVARNODE
  end

  def visitIterNode(node)
    verbose node, IterNodeVisitor
    IterNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ITERNODE
  end

  def visitLiteralNode(node)
    verbose node, LiteralNodeVisitor
    LiteralNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::LITERALNODE
  end

  def visitLocalAsgnNode(node)
    verbose node, LocalAsgnNodeVisitor
    LocalAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::LOCALASGNNODE
  end

  def visitLocalVarNode(node)
    verbose node, LocalVarNodeVisitor
    LocalVarNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::LOCALVARNODE
  end

  def visitMatch2Node(node)
    verbose node, Match2NodeVisitor
    Match2NodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MATCH2NODE
  end

  def visitMatch3Node(node)
    verbose node, Match3NodeVisitor
    Match3NodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MATCH3NODE
  end

  def visitMatchNode(node)
    verbose node, MatchNodeVisitor
    MatchNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MATCHNODE
  end

  def visitModuleNode(node)
    verbose node, ModuleNodeVisitor
    ModuleNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MODULENODE
  end

  def visitMultipleAsgnNode(node)
    verbose node, MultipleAsgnNodeVisitor
    MultipleAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MULTIPLEASGNNODE
  end

  def visitMultipleAsgnNode(node)
    verbose node, MultipleAsgnNodeVisitor
    MultipleAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::MULTIPLEASGNNODE
  end

  def visitNewlineNode(node)
    verbose node, NewlineNodeVisitor
    NewlineNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::NEWLINENODE
  end

  def visitNextNode(node)
    verbose node, NextNodeVisitor
    NextNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::NEXTNODE
  end

  def visitNilNode(node)
    verbose node, NilNodeVisitor
    NilNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::NILNODE
  end

  def visitNotNode(node)
    verbose node, NotNodeVisitor
    NotNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::NOTNODE
  end

  def visitNthRefNode(node)
    verbose node, NthRefNodeVisitor
    NthRefNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::NTHREFNODE
  end

  def visitOpAsgnAndNode(node)
    verbose node, OpAsgnAndNodeVisitor
    OpAsgnAndNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::OPASGNANDNODE
  end

  def visitOpAsgnNode(node)
    verbose node, OpAsgnNodeVisitor
    OpAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::OPASGNNODE
  end

  def visitOpAsgnOrNode(node)
    verbose node, OpAsgnOrNodeVisitor
    OpAsgnOrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::OPASGNORNODE
  end

  def visitOpElementAsgnNode(node)
    verbose node, OpElementAsgnNodeVisitor
    OpElementAsgnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::OPELEMENTASGNNODE
  end

  def visitOrNode(node)
    verbose node, OrNodeVisitor
    OrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ORNODE
  end

  def visitPostExeNode(node)
    verbose node, PostExeNodeVisitor
    PostExeNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::POSTEXENODE
  end

  def visitPreExeNode(node)
    verbose node, PreExeNodeVisitor
    PreExeNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::PREEXENODE
  end

  def visitRedoNode(node)
    verbose node, RedoNodeVisitor
    RedoNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::REDONODE
  end

  def visitRegexpNode(node)
    verbose node, RegexpNodeVisitor
    RegexpNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::REGEXPNODE
  end

  def visitRescueBodyNode(node)
    verbose node, RescueBodyNodeVisitor
    RescueBodyNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::RESCUEBODYNODE
  end

  def visitRescueNode(node)
    verbose node, RescueNodeVisitor
    RescueNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::RESCUENODE
  end

  def visitRestArgNode(node)
    verbose node, RestArgNodeVisitor
    RestArgNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::RESTARGNODE
  end

  def visitRetryNode(node)
    verbose node, RetryNodeVisitor
    RetryNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::RETRYNODE
  end

  def visitReturnNode(node)
    verbose node, ReturnNodeVisitor
    ReturnNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::RETURNNODE
  end

  def visitRootNode(node)
    verbose node, RootNodeVisitor
    RootNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ROOTNODE
  end

  def visitSClassNode(node)
    verbose node, SClassNodeVisitor
    SClassNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SCLASSNODE
  end

  def visitSelfNode(node)
    verbose node, SelfNodeVisitor
    SelfNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SELFNODE
  end

  def visitSplatNode(node)
    verbose node, SplatNodeVisitor
    SplatNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SPLATNODE
  end

  def visitStrNode(node)
    verbose node, StrNodeVisitor
    StrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::STRNODE
  end

  def visitSuperNode(node)
    verbose node, SuperNodeVisitor
    SuperNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SUPERNODE
  end

  def visitSValueNode(node)
    verbose node, SValueNodeVisitor
    SValueNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SVALUENODE
  end

  def visitSymbolNode(node)
    verbose node, SymbolNodeVisitor
    SymbolNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::SYMBOLNODE
  end

  def visitToAryNode(node)
    verbose node, ToAryNodeVisitor
    ToAryNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::TOARYNODE
  end

  def visitTrueNode(node)
    verbose node, TrueNodeVisitor
    TrueNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::TRUENODE
  end

  def visitUndefNode(node)
    verbose node, UndefNodeVisitor
    UndefNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::UNDEFNODE
  end

  def visitUntilNode(node)
    verbose node, UntilNodeVisitor
    UntilNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::UNTILNODE
  end

  def visitVAliasNode(node)
    verbose node, VAliasNodeVisitor
    VAliasNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::VALIASNODE
  end

  def visitVCallNode(node)
    verbose node, VCallNodeVisitor
    VCallNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::VCALLNODE
  end

  def visitWhenNode(node)
    verbose node, WhenNodeVisitor
    WhenNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::WHENNODE
  end

  def visitWhileNode(node)
    verbose node, WhileNodeVisitor
    WhileNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::WHILENODE
  end

  def visitXStrNode(node)
    verbose node, XStrNodeVisitor
    XStrNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::XSTRNODE
  end

  def visitYieldNode(node)
    verbose node, YieldNodeVisitor
    YieldNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::YIELDNODE
  end

  def visitZArrayNode(node)
    verbose node, ZArrayNodeVisitor
    ZArrayNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ZARRAYNODE
  end

  def visitZSuperNode(node)
    verbose node, ZSuperNodeVisitor
    ZSuperNodeVisitor.new.accept(node) if node.node_type == org.jruby.ast.NodeType::ZSUPERNODE
  end
end
