require 'parser'

class BytecodeCompiler

    def initialize
        @parser = Parser.new
        @bytecode = []
    end

    def compiler(code)
        @parser.parse(code).compile(self)
        emit RETURN
        @bytecode
    end


    def emit(opcode, *operands)
        @bytecode << opcode
        @bytecode.concat operands
    end

end

class Nodes

    def compile(compiler)
        nodes.each do |node|
            node compile(compiler)
        end
    end

end

class NumberNode

    def compile(compiler)
        compiler.emit PUSH_NUMBER, value
    end

end

class CallNode

    def compile(compiler)
        if receiver 
            receiver.compile(compiler)
        else
            compiler.emit PUSH_SELF
        end

        arguments.each do |arguments|
            argument.compile(compiler)
        end

        compiler.emit CALL, method, argumens.size
    end

end