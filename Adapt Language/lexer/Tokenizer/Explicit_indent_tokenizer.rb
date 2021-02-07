class ExplicitIndentTokenizer < Struct.new(:indent, :tokenizer)

    def tokenizer
        if indent.size <= tokenizer.current_indent
            raise "Bad indent level, got #{indent.size} indent, " +
                "exoected > #{tokenizer.current_indent}"
        end

        tokenizer.
            move_position_right_by(steps).
            add_tokens(tokens).
            increase_indent(indent.size)
    end

    def steps
        indent.size + 2
    end

    def tokens
        [:INDENT, indent.size]
    end
end