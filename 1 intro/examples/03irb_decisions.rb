x = 4
x < 5
x <= 4
x > 4
false.class
true.class

x = 4
puts 'This appears to be false.' unless x == 4
puts 'This appears to be true.' if x == 4

if x == 4
  puts 'This appears to be true.'
end

unless x == 4
  puts 'This apears to be false.'
else
  puts 'This appears to be true.'
end

puts 'This appears to be true.' if not true

puts 'This appears to be true.' if !true

x = x + 1 while x < 10
p x

x = x - 1 until x == 1
p x

while x < 10
  x = x + 1
  puts x
end
