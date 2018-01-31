digits = 0..9

p digits.reject { |i| i < 5 }

digits.each { |digit| p digit }

p (1..10) === 5
p (1..10) === 15
p (1..10) === 3.14159
p ('a'..'j') === 'c'
p ('a'..'j') === 'z'
