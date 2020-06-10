# Example 1
def mymethod(a, b, *c)
  puts a, b
  c.each do |x|
    puts x
  end
end

mymethod(1,2,3, 4, 5, 6, 7)

# Example 2
def mymethodnew(name: "default", options: {})
  options.merge!(name: name)
  puts options
end

# Example 3
def other_method(name: , age: )
  puts name
  puts age
end

# Example 4
str = "Hello, World!"
str2 = "Goodbye"

def str.spell
  self.split(/./).join("-")
end

str.spell
# str2.spell