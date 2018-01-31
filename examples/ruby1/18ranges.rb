p (1..10).class
p 'a'..'z'

my_array = [1, 2, 3]
p 0...my_array.length

p (1..10).to_a
p('bar'..'bat').to_a

digits = 0..9
p digits.include?(5)
p digits.max
p digits.min
p digits.reject { |i| i < 5 }
digits.each { |digit| p digit }

# Ranges can be used in conditions
while line = gets
  puts line if line =~ /start/ .. line =~ /end/
end

# Ranges can be used as intervals
p (1..10) === 5
p (1..10) === 15
p (1..10) === 3.14159
('a'..'j') === 'c'
('a'..'j') === 'z'
