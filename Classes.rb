
class Friend
  @@myname = "Ivan" # Змінна класу

  def initialize(name, sex, phone)
    @name, @sex, @phone = name, sex, phone # Змінні примірника
  end

  def hello # Метод примірника
    puts "Hello, my mane is #{@name}."
  end

  def Friend.our_common_friend # Метод класу
    puts "We are friends #{@@myname}."
  end
end

f1 = Friend.new("Jane", "F", "123456")
f2 = Friend.new("Tom", "M", "234567")

helloJane = f1.hello
helloTom = f2.hello
commonFriend = Friend.our_common_friend

puts helloJane
puts helloTom
puts commonFriend

class MyClass

  NAME = "Class Name"
  @@count = 0

  def initialize
    @@count+=1
    @myvar = 10
  end

  def MyClass.getcount # Метод класу
    @@count # Змінна класу
  end

  def getcount # Екземпляр повертає змінну класу
    @@count # Змінна класу
  end

  def getmyvar # Метод примірника
    @myvar # Змінна примірника
  end

  def setmyvar(val) # Метод примірника встановлює @myvar
    @myvar = val
  end

  def myvar=(val) # Інший спосіб установки @myvar
    @myvar = val
  end

end

foo = MyClass.new
puts foo
foo.setmyvar 20
puts foo
foo.myvar = 30
puts foo