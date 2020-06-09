# Exceptions
=begin
Механізм обробки помилок
=end

# raise - Виведення останнього виключення
# raise "Error" - Runtime Error(тип помилки) і повідомлення з текстом Error
# raise ArgumentError - Argument Error
# raise ArgumentError, "Error" - Argument Error і повідомлення з текстом Error
# raise ArgumentError.new("Error") - Альтернативний запис попереднього прикладу
# raise ArgumentError, "Error", caller[0] - В даному виводі помилки додається інформація виду "filename:line" "filename:line:in'method'" яка зберігається в масиві caller

# rescue
=begin
Обробник виводу помилок в блоці програми
=end

begin
  # Код при виконанні якого може відбутися помилка
rescue TypeError
  puts TypeError
else
  puts "Other Errors"
end

# retry
=begin
Дозволяє повернутися до початку блоку виконання в разі помилки
=end

begin
  # Код при виконанні якого може відбутися помилка
rescue TypeError
  puts TypeError
retry
end

# ensure
=begin
Обробник виводу помилок в блоці програми
=end

begin
  # Код при виконанні якого може відбутися помилка
rescue TypeError
  puts TypeError
ensure
  puts "Program Finished"
end

# Objects
=begin
В Ruby фактично всі сунтності є об'єктами.
Тому робота програми складається з виклику різних методів.
Крім того кожен об'єкт є примірником якого-небедь класу.

=end

puts "#{3.succ}"
puts "#{"abc".upcase}"
puts "#{[2,1,3,6,5,4].sort}"
# someObject.someMethod

puts "#{"abc".class}"
puts "#{"abc".class.class}"

# object id
=begin
Кожен обєкт в Ruby крім інкапсуляції й власних атрибутів і операцій має унікальний ідентифікатор
=end

puts "id: #{"abc".object_id}"

# Classes

# Створення обєктів з явним заданням класу
myFile = File.new("textfile.txt", "w")
puts myFile

myString = String.new("This is a String")
puts myString

# Створення обєктів для яких непотрібно задавати клас явно
yourString = "This is a new String"
puts yourString

myNumber = 5
puts myNumber

=begin
При присвоюванні посилання на обєкт узагальнюються і два обєкти ссилаються на один і той же клас
=end

p = "123456"
r = p
puts r
puts p.object_id
puts r.object_id

=begin
Якщо об'єкт можна змінювати то модифікація початкової змінної вплине на іншу.
=end

p.gsub!(/12/, "x")
puts r

=begin
Але нове присвоєння будь якої із змінних не впливає на іншу
=end

p = "abcdef"
puts p
puts r


=begin
Для того, щоб зробити об'єкт не змінним до нього треба використати метод freeze
=end

p.freeze
# p.gsub!(/ab/, 'p') - Помилка

# Символ
=begin
Веде себе як незмінна строка і всі входження символа посилаються на одне і те ж значення
=end
suits = [:hearts, :clubs, :diamonds, :spades]
lead = suits[1].to_s
puts lead

# Масив символів
suits = %i[hearts clubs diamonds spades]
lead = suits[1].to_s
puts lead

# Object
=begin
Суперклас який доступний глобально і додані в нього з Kernel методи є загальнодоступними.
Модуль - набір методів і констант є зовнішнім по відношенню до програми Ruby. Використовується для керування простором імен.
Якщо модуль використовувати з допомогою директиви include то він будеяк клас-домішка.
Модуль в Ruby - обяєктно-орієнтована абстракція схожа на клас.
=end

puts Math::PI

# Include
=begin
Включає імена з вказаного простору імен в даний.
Тобто при використанні include тобто методи модуля стають доступні як методи примірника
=end

# Extend
=begin
Добавляє об'єкту функції з модуля.
Тобто при використанні include тобто методи модуля стають доступні як методи класу
=end

# Операції які не відносяться до модулів а лише до вихідних двійкових файлів
# Load
=begin
Читає і виконує його в даному контексті
=end

# Require
=begin
Працює аналогічно, але порівняно з load не завантажує файл якщо вінбув завантажений раніше.
=end