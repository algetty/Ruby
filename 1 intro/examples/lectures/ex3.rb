a = 17
p "a = #{a}"
p 'a = #{a}'

b = """
This is a longer string,
perhaps some instructions or agreement
goes here. By the way,
a = #{a}
"""
puts b

s = "Hi there. How are you?"
puts "#{s.length}, [#{s}]"

print s[4], "\n"
printf("%c\n", s[4])

# substring [n,l] n is the start index and l is the length of the substring
# range [n..m] extracts a string starting at index n up to index m, inclusive
# range [n...m] extracts a string starting at index n up to but not including m
puts "[#{s[4,4]}] [#{s[6..15]}] [#{s[6...15]}]"

p "Wow " * 3

p "#{s.index("there")} #{s.index("How")} #{s.index("bogus")}"

p s.reverse

print "Please enter a noun: "
noun = gets.chomp

p noun
