DefNode = Struct.new(:name, :args_names, :body)
VarRefNode = Struct.new(:value)
IntegerNode = Struct.new(:value)
CallNode = Struct.new(:name, :arg_exprs)