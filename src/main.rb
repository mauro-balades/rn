require './src/tokenizer.rb'
require './src/generator.rb'
require './src/parser.rb'

def main
    tokens = Tokenizer.new(File.read("./test/test.rn")).tokenize
    tree = Parser.new(tokens).parse
    generated = Generator.new.generate(tree)
    runtime  ="function add(x, y) { return x + y };"
    test = "console.log(f(1, 2));"
    puts [runtime, generated, test].join("\n")
end

main