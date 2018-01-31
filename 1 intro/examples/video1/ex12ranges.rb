# ranges

# p (1..10).class # => range
# p (1..10).methods
# p (1..10).to_a  #converts to array
# p (1...10).to_a
# p my_array = [1, 2, 3]
# p 0..my_array.length
# p ('bar'..'bat').to_a
# p digits = 0..9
# p digits.include? 5
# p digits.min
# p digits.max

digits = 0..9

p digits.reject { |i| i < 5}

digits.each { |digit| p digit}

p (1..10) === 5
p (1..10) === 15
p (1..10) === 3.14
p ('a'..'j') === 'c'
p ('a'..'j') === 'z'