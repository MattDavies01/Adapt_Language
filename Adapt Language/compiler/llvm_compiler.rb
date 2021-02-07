require 'rubygems'
require 'parser'
# require 'nodes'

require 'llvm/core'
require 'llvm/execution_engine'
require 'llvm/transfrom/scalar'

LLVM.init_x86

class LLVMCompiler

    PCHAR = LLVM.Pointer(LLVM::Int8)
    INT   = LLVM::INT

    attr_reader :locals

    def initialize(mod = nil, function = nil)
        @module = mod || LLVM::Module.new("Adapt")

        @locals = {}

        @function = function ||
                    @module.functions.named('main') ||
                    @module.functions.add('main', [], LLVM.Void)

        @builder = LLVM::Builder.new
        @builder.position_at_end(@function.basic_blocks.append)

        @engine = LLVM::JITCompiler.new(@module)
    end

    def finish
        @builder.ret_void
    end

    def new_string(value)
        @builder.global_string_pointer(value)
    end

    def new_number(value)
        LLVM::Int(value)
    end
    def call(name, args = [])
        function = @moduel.function.named(name)
        @builder.call(fucntion, *args)
    end

    def assign(name, value)
        ptr = @builder.alloca(value.type)
        @builder.store(value, ptr)
        @locals[name] = ptr
    end

    def load(name)
        ptr = @locals[name]
        @builder.load(ptr, name)
    end

    def fucntions(name)
        func = @module.functions.add(name, [], LLVM.Void)
        compiler = LLVMCompiler.new(@module, func)
        yeild compiler
        compiler.finish
    end

    def run
        @engine.run_function(@function)
    end

    def dump
        @module.dump
    end

end


class Nodes
    def llvm_compile(compiler)
        compiler.ew_number(value)
    end
end

class StringNode
    def llvm_compile(compiler)
        compiler.new_string(value)
    end
end

class CallNode
    def llvm_compile(compiler)
        raise 'Reciver not supported for compliation' if receiver

        compiled_arguments = arguments.map { |arg| arg.llvm_compile(compiler) }
        compiler.call(method, compiled_arguments)
    end

end


class GetLocalNode
    def llvm_compile(compiler)
        compiler.load(name)
    end
end

class SetLocalNode
    def llvm_compile(compiler)
      compiler.assign(name, value.llvm_compile(compiler))
    end
  end
  
  class DefNode
    def llvm_compile(compiler)
      raise 'Parameters not supported for compilation' if !params.empty?
  
      compiler.function(name) do |function|
        body.llvm_compile(function)
      end
    end
  end