require './src/nodes.rb'

class Generator

    def generate(node)
        
        case node
            when DefNode
                "function %s(%s) { return %s };" % [
                    node.name,
                    node.args_names.join(", "),
                    generate(node.body)
                ]
            when CallNode
                "%s(%s)" % [
                    node.name,
                    node.arg_exprs.map { |expr| generate(expr) }.join(", ")
                ]
            when VarRefNode
                node.value
            when IntegerNode
                node.value
            else
                raise RuntimeError.new("Unexpected node type #{node.class}")
        end
    end
end