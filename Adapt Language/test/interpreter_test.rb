require 'test_helper'
require 'interpreter'

class InterpreterTest < Test::Unit::TestCase

  def test_code
    code = <<-CODE
class Adapt:
  def does_it_work:
    "yeah!"
Adapt_object = Adapt.new
if Adapt_object:
  print(Adapt_object.does_it_work)
CODE

    assert_prints("yeah!\n") { Interpreter.new.eval(code) }
  end

  def test_calling_other_method
    code = <<-CODE
class Adapt:
  def does_it_call_another_method:
    does_it_work()
  def does_it_work:
    "yeah!"
Adapt_object = Adapt.new
if Adapt_object:
  print(Adapt_object.does_it_call_another_method)
CODE

    assert_prints("yeah!\n") { Interpreter.new.eval(code) }
  end
end