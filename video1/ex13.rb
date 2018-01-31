# Basic Regular Expressions

print "Enter something mentioning a programming language: "
line = gets

# if line =- /Perl|Python/i
#   puts "Scripting language mentions in: #{line}"
# end

p line.sub!(/Perl/, 'Ruby')  # ! changes the actual line itself
p line

p line.gsub!(/Python/i, 'Ruby')  #global substitution
p line

