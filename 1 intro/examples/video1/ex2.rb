a = 17
p "a = #{a}"
p 'a = #{a}'

b = """
this is a longer string,
perhaps some instructions or agreement
goes here. By they way,
a = #{a}
"""

puts b

s = "Hi there. how are you?"
puts "#{s.length}, [#{s}]"

print s[4], "\n"
printf("%c\n", s[4])

#substring [n, l] n is the tart index and l is the length of the substring
# range [n..m] extracts a string starting at index n up to inxex m, insclusive
# range [n...m] extracts a string starting at index n up to but no including m
puts "[#{s[4,4]}] [#{s[6..15]}] [#{s[6...15]}]"

p "wow " * 3

p "#{s.index("there")} #{s.index("how")} #{s.index("bogus")}"

p s.reverse

print "Please enter a noun: "
noun = gets.chomp

p noun










