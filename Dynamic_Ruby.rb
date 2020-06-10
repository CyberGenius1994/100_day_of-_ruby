# Example 1
def calculate(op1, operator, op2)
  string = op1.to_s + operator + op2.to_s
  eval(string)
end

@alpha = 25
@beta= 12

puts calculate(2, "+", 2)
puts calculate(5, "*", @alpha)
puts calculate(@beta, "**", 3)

# Example 2
if platform == Windows
  action1
elsif platform == Linux
  action2
else
  default_action
end

# Example 3
if platform == Windows
  def my_action
    action1
  end
elsif platform == Linux
  def my_action
    action2
  end
else
  def my_action
    default_action
  end
end