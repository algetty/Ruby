# Basic RegEx

print "Enter something mentioning a programming language: "
line = gets

if line =~ /Perl|Python/i
  puts "Scripting language mentioned in: #{line}"
end

p line.sub!(/Perl/, 'Ruby')
p line

p line.gsub!(/(P|p)ython/i, 'Ruby')
p line
