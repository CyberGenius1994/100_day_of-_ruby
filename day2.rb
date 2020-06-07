# Operators
=begin
::           - дозвіл області видимості
[]           - вибір індексу
**           - приведення до степеня
<<           - логічний зсув вліво
>>           - логічний зсув вправо
&            - порозрядне і
| ^          - порозрядне або виключаюче або
== ===       - рівність
<=> != =~ !~ - нерівність
&&           - логічне і
||           - логічне або
.. ...       - оператори діапазону
?:           - тернарний оператор
not          - логічне заперечення
and or       - логічне і або
=end

# Explanation of the Hello_World.rb
=begin
print - метод який виконує друк на стандартний вивід
gets - метод зчитування строки із стандартного вводу
chomp! - видаляє символ закінчення строки
exit - метод завершення програми
split - метод який розбиває строку на частини(розбивання відбувається по знаку пробіла) і повертає масив
to_f - метод перетворення строки в число з плаваючою крапкою.
=end

# chomp
=begin
Метод який видаляє символ закінчення строки.
В стандартному записі string.chomp повертає нову строку без символа закінчення і початкова строка залишається без змін.
Для того щоб метод змінив наявну строку його треба викликати зі знаком ! string.chomp!
=end

#nil? === false

# Loops and branching
a = 10
b = 20
c = 30
x = 2
y = 4
list = %w[alpha bravo charlie delta echo]

# if
if x < 5 then
  print "x < 5 (if)\n"
else
  print "x > 5 (if)\n"
end

print "y < 5 (if)\n" if y < 5

z1 = if a > 0 then b else c end

#unless
unless x >= 5 then
  print "x < 5 (unless)\n"
else
  print "x > 5 (unless)\n"
end

print "y < 5 (unless)\n" unless y >= 5

z2 = unless a <= 0 then c else b end



# case
age =  5
case age
when 0 .. 2
  puts "baby"
when 3 .. 6
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else
  puts "adult"
end

# while
i = 0
while i < list.size do
  puts "#{list[i]}"
  i+=1
end

i = 0
begin
  puts "#{list[i]}"
  i+=1
end while i < list.size

#until
i = 0
until i == list.size do
  puts "#{list[i]}"
  i+=1
end

i = 0
begin
  puts "#{list[i]}"
  i+=1
end until i == list.size

# for
for u in list do
  puts "#{u}"
end

n = list.size - 1
for i in 0 .. n do
    puts "#{list[i]}"
end

# each
list.each do |f|
  puts "#{f}"
end

# loop
i = 0
n = list.size - 1
loop do
  puts "#{list[i]}"
  i+=1
  break unless i <= n
end

# iterable times
n = list.size
n.times do |i|
  puts "#{list[i]}"
end

# iterable upto
n = list.size - 1
0.upto(n) do |i|
  puts "#{list[i]}"
end

# iterable each_index
list.each_index do |x|
  puts "#{list[x]}"
end

# loops з перевіркою в кінці краще не використовувати, так як це погана практика.

# break
=begin
ключове слово дострокового виходу із циклу.
=end

# redo
=begin
(узагальнене retry) ключове слово, яке працює як retry в ітераторах.
=end

# next
=begin
здійснює перехід на кінець внутрішнього циклу і відновлює виконання з даної строки.
=end

# Використання модифікаторів
=begin
perform_task() until finished
perform_task() while not finished
=end

#if unless result
puts "#{z1} || #{z2}"
print "#{z1} || #{z2}"

# Bug of print method
=begin
При выводе числа в методе принт в конце строки появляется знак %.
Так что вместо метода print для вывода лучше использовать puts.
=end

