require 'racc/parser.rb'

  require 'lexer/lexer'
  require 'parser/nodes'


class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 146)
  def parse(code, show_tokens = false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    27,    25,    26,    16,    18,    19,    20,    21,    22,    23,
    24,    27,    25,    26,    16,    18,    19,    20,    21,    22,
    23,    24,    30,    72,    41,    42,    39,    40,    53,    15,
    30,    17,    41,    42,    39,    40,    30,    16,    16,    30,
    15,    74,    17,    27,    25,    26,    84,    18,    19,    20,
    21,    22,    23,    24,    27,    25,    26,    45,    18,    19,
    20,    21,    22,    23,    24,    17,    17,    30,    72,    41,
    42,    47,    15,    68,    30,    82,    41,    42,    39,    40,
    27,    25,    26,    15,    18,    19,    20,    21,    22,    23,
    24,    27,    25,    26,    48,    18,    19,    20,    21,    22,
    23,    24,    30,    28,    41,    42,    27,    25,    26,    15,
    18,    19,    20,    21,    22,    23,    24,    27,    25,    26,
    15,    18,    19,    20,    21,    22,    23,    24,    86,    79,
    85,    78,    27,    25,    26,    15,    18,    19,    20,    21,
    22,    23,    24,    27,    25,    26,    15,    18,    19,    20,
    21,    22,    23,    24,    46,    49,    45,    51,    27,    25,
    26,    15,    18,    19,    20,    21,    22,    23,    24,    27,
    25,    26,    15,    18,    19,    20,    21,    22,    23,    24,
    72,    88,   nil,   nil,    27,    25,    26,    15,    18,    19,
    20,    21,    22,    23,    24,    27,    25,    26,    15,    18,
    19,    20,    21,    22,    23,    24,   nil,   nil,   nil,   nil,
    27,    25,    26,    15,    18,    19,    20,    21,    22,    23,
    24,    27,    25,    26,    15,    18,    19,    20,    21,    22,
    23,    24,   nil,   nil,   nil,   nil,    27,    25,    26,    15,
    18,    19,    20,    21,    22,    23,    24,    27,    25,    26,
    15,    18,    19,    20,    21,    22,    23,    24,   nil,   nil,
   nil,   nil,    27,    25,    26,    15,    18,    19,    20,    21,
    22,    23,    24,    27,    25,    26,    15,    18,    19,    20,
    21,    22,    23,    24,   nil,   nil,   nil,   nil,    27,    25,
    26,    15,    18,    19,    20,    21,    22,    23,    24,   nil,
   nil,    30,    15,    41,    42,    39,    40,    35,    36,    37,
    38,    33,    34,    32,    31,   nil,   nil,    15,    66,    72,
   nil,    30,   nil,    41,    42,    39,    40,    35,    36,    37,
    38,    33,    34,    32,    31,    30,   nil,    41,    42,    39,
    40,    35,    36,    37,    38,    33,    34,    32,    31,    30,
   nil,    41,    42,    39,    40,    35,    36,    37,    38,    33,
    34,    32,    31,    30,   nil,    41,    42,    39,    40,    35,
    36,    37,    38,    33,    34,    32,    31,    30,   nil,    41,
    42,    39,    40,    35,    36,    37,    38,    33,    34,    32,
    31,    30,   nil,    41,    42,    39,    40,    35,    36,    37,
    38,    33,    34,    32,    31,    30,   nil,    41,    42,    39,
    40,    35,    36,    37,    38,    33,    34,    32,    31,    30,
   nil,    41,    42,    39,    40,    35,    36,    37,    38,    33,
    34,    32,    30,   nil,    41,    42,    39,    40,    35,    36,
    37,    38,    33,    34,    30,   nil,    41,    42,    39,    40,
    35,    36,    37,    38,    30,   nil,    41,    42,    39,    40,
    35,    36,    37,    38,    30,   nil,    41,    42,    39,    40 ]

racc_action_check = [
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,    72,    72,    72,    72,    72,    72,    72,    72,    72,
    72,    72,    61,    48,    61,    61,    61,    61,    30,     0,
    60,     0,    60,    60,    60,    60,    64,    80,     2,    65,
    72,    48,    72,    45,    45,    45,    80,    45,    45,    45,
    45,    45,    45,    45,    29,    29,    29,    53,    29,    29,
    29,    29,    29,    29,    29,    80,     2,    62,    49,    62,
    62,    24,    45,    45,    58,    74,    58,    58,    58,    58,
    15,    15,    15,    29,    15,    15,    15,    15,    15,    15,
    15,    40,    40,    40,    25,    40,    40,    40,    40,    40,
    40,    40,    63,     1,    63,    63,    41,    41,    41,    15,
    41,    41,    41,    41,    41,    41,    41,    47,    47,    47,
    40,    47,    47,    47,    47,    47,    47,    47,    81,    69,
    81,    69,    46,    46,    46,    41,    46,    46,    46,    46,
    46,    46,    46,    27,    27,    27,    47,    27,    27,    27,
    27,    27,    27,    27,    23,    26,    23,    28,    39,    39,
    39,    46,    39,    39,    39,    39,    39,    39,    39,    79,
    79,    79,    27,    79,    79,    79,    79,    79,    79,    79,
    85,    86,   nil,   nil,    42,    42,    42,    39,    42,    42,
    42,    42,    42,    42,    42,    38,    38,    38,    79,    38,
    38,    38,    38,    38,    38,    38,   nil,   nil,   nil,   nil,
    32,    32,    32,    42,    32,    32,    32,    32,    32,    32,
    32,    33,    33,    33,    38,    33,    33,    33,    33,    33,
    33,    33,   nil,   nil,   nil,   nil,    34,    34,    34,    32,
    34,    34,    34,    34,    34,    34,    34,    35,    35,    35,
    33,    35,    35,    35,    35,    35,    35,    35,   nil,   nil,
   nil,   nil,    36,    36,    36,    34,    36,    36,    36,    36,
    36,    36,    36,    37,    37,    37,    35,    37,    37,    37,
    37,    37,    37,    37,   nil,   nil,   nil,   nil,    31,    31,
    31,    36,    31,    31,    31,    31,    31,    31,    31,   nil,
   nil,    43,    37,    43,    43,    43,    43,    43,    43,    43,
    43,    43,    43,    43,    43,   nil,   nil,    31,    43,    50,
   nil,    50,   nil,    50,    50,    50,    50,    50,    50,    50,
    50,    50,    50,    50,    50,     3,   nil,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     3,     3,     3,    52,
   nil,    52,    52,    52,    52,    52,    52,    52,    52,    52,
    52,    52,    52,    83,   nil,    83,    83,    83,    83,    83,
    83,    83,    83,    83,    83,    83,    83,    70,   nil,    70,
    70,    70,    70,    70,    70,    70,    70,    70,    70,    70,
    70,    71,   nil,    71,    71,    71,    71,    71,    71,    71,
    71,    71,    71,    71,    71,    67,   nil,    67,    67,    67,
    67,    67,    67,    67,    67,    67,    67,    67,    67,    54,
   nil,    54,    54,    54,    54,    54,    54,    54,    54,    54,
    54,    54,    55,   nil,    55,    55,    55,    55,    55,    55,
    55,    55,    55,    55,    57,   nil,    57,    57,    57,    57,
    57,    57,    57,    57,    56,   nil,    56,    56,    56,    56,
    56,    56,    56,    56,    59,   nil,    59,    59,    59,    59 ]

racc_action_pointer = [
    -2,   103,    33,   320,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    78,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   125,    42,    83,   143,   141,   157,    52,
    17,   286,   208,   219,   234,   245,   260,   271,   193,   156,
    89,   104,   182,   286,   nil,    41,   130,   115,    10,    55,
   306,   nil,   334,    26,   404,   417,   439,   429,    59,   449,
    15,     7,    52,    87,    21,    24,   nil,   390,   nil,    99,
   362,   376,     9,   nil,    64,   nil,   nil,   nil,   nil,   167,
    32,    98,   nil,   348,   nil,   167,   170,   nil,   nil ]

racc_action_default = [
    -1,   -56,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -56,   -18,   -19,   -20,   -21,
   -22,   -23,   -24,   -46,   -44,   -56,   -56,   -56,   -56,    -5,
   -56,   -56,   -56,   -56,   -56,   -56,   -56,   -56,   -56,   -56,
   -56,   -56,   -56,   -56,   -25,   -56,   -56,   -56,   -56,   -56,
   -56,    89,    -4,   -27,   -32,   -33,   -34,   -35,   -36,   -37,
   -38,   -39,   -40,   -41,   -42,   -43,   -17,   -30,   -28,   -56,
   -47,   -45,   -56,   -49,   -51,   -54,   -55,   -26,   -29,   -56,
   -56,   -56,   -52,   -31,   -48,   -56,   -56,   -50,   -53 ]

racc_goto_table = [
    29,     2,    43,    73,    75,    76,    44,     1,    69,    81,
   nil,   nil,   nil,   nil,    50,   nil,    52,   nil,    54,    55,
    56,    57,    58,    59,    60,    61,    62,    63,    64,    65,
   nil,   nil,    67,    70,    71,   nil,    77,   nil,   nil,   nil,
    87,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    83,   nil,   nil,   nil,
   nil,   nil,   nil,    80,   nil,   nil,   nil,   nil,    29 ]

racc_goto_check = [
     4,     2,     3,    17,    17,    17,    15,     1,    16,    18,
   nil,   nil,   nil,   nil,     3,   nil,     3,   nil,     3,     3,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
   nil,   nil,     3,     3,     3,   nil,    15,   nil,   nil,   nil,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     3,   nil,   nil,   nil,
   nil,   nil,   nil,     2,   nil,   nil,   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     7,     1,   -13,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   -17,   -37,   -45,   -65 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 35, :_reduce_1,
  1, 35, :_reduce_2,
  1, 36, :_reduce_3,
  3, 36, :_reduce_4,
  2, 36, :_reduce_5,
  1, 36, :_reduce_6,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  3, 37, :_reduce_17,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 39, :_reduce_20,
  1, 39, :_reduce_21,
  1, 39, :_reduce_22,
  1, 39, :_reduce_23,
  1, 39, :_reduce_24,
  2, 40, :_reduce_25,
  4, 40, :_reduce_26,
  3, 40, :_reduce_27,
  2, 49, :_reduce_28,
  3, 49, :_reduce_29,
  1, 50, :_reduce_30,
  3, 50, :_reduce_31,
  3, 41, :_reduce_32,
  3, 41, :_reduce_33,
  3, 41, :_reduce_34,
  3, 41, :_reduce_35,
  3, 41, :_reduce_36,
  3, 41, :_reduce_37,
  3, 41, :_reduce_38,
  3, 41, :_reduce_39,
  3, 41, :_reduce_40,
  3, 41, :_reduce_41,
  3, 41, :_reduce_42,
  3, 41, :_reduce_43,
  1, 42, :_reduce_44,
  3, 43, :_reduce_45,
  1, 44, :_reduce_46,
  3, 45, :_reduce_47,
  3, 51, :_reduce_48,
  3, 46, :_reduce_49,
  6, 46, :_reduce_50,
  0, 52, :_reduce_51,
  1, 52, :_reduce_52,
  3, 52, :_reduce_53,
  3, 47, :_reduce_54,
  3, 48, :_reduce_55 ]

racc_reduce_n = 56

racc_shift_n = 89

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :DEF => 3,
  :CLASS => 4,
  :NEWLINE => 5,
  :NUMBER => 6,
  :STRING => 7,
  :TRUE => 8,
  :FALSE => 9,
  :NIL => 10,
  :IDENTIFIER => 11,
  :CONSTANT => 12,
  :INDENT => 13,
  :DEDENT => 14,
  "." => 15,
  "!" => 16,
  "*" => 17,
  "/" => 18,
  "+" => 19,
  "-" => 20,
  ">" => 21,
  ">=" => 22,
  "<" => 23,
  "<=" => 24,
  "==" => 25,
  "!=" => 26,
  "&&" => 27,
  "||" => 28,
  "=" => 29,
  "," => 30,
  "(" => 31,
  ")" => 32,
  ";" => 33 }

racc_nt_base = 34

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetConstant",
  "SetConstant",
  "GetLocal",
  "SetLocal",
  "Def",
  "Class",
  "If",
  "Arguments",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 29)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 30)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 34)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 35)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 36)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 37)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

module_eval(<<'.,.,', 'grammar.y', 51)
  def _reduce_17(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 18 omitted

# reduce 19 omitted

module_eval(<<'.,.,', 'grammar.y', 60)
  def _reduce_20(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 61)
  def _reduce_21(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_22(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 63)
  def _reduce_23(val, _values, result)
     result = Falsenew 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 64)
  def _reduce_24(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 68)
  def _reduce_25(val, _values, result)
     result = CallNode.new(nil, val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 70)
  def _reduce_26(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 71)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 75)
  def _reduce_28(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 76)
  def _reduce_29(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 80)
  def _reduce_30(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_31(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 85)
  def _reduce_32(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 86)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 88)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 89)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 95)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 100)
  def _reduce_44(val, _values, result)
     result = GetConstantNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 104)
  def _reduce_45(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 108)
  def _reduce_46(val, _values, result)
     result = GetLocalNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 112)
  def _reduce_47(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 116)
  def _reduce_48(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_49(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 122)
  def _reduce_50(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 126)
  def _reduce_51(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 127)
  def _reduce_52(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 128)
  def _reduce_53(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 132)
  def _reduce_54(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 136)
  def _reduce_55(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end