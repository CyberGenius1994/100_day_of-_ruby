puts "Enter Y"
y = gets.to_i
puts "Enter Z"
z = gets.to_i

begin
  puts "sqrt from (#{y} / #{z})"
  x = Math.sqrt(y / z)
  puts "Result #{x}"
rescue ArgumentError
  puts "argument error"
rescue ZeroDivisionError
  puts "divided by 0"
end

# Alternative
begin
  x = Math.sqrt(y / z)
  puts "Result #{x}"
rescue => err
  puts err
rescue => err2
  puts err2
end
