# Basic Regular Expressions
print "Enter something mentioning a Language: "
line = gets

if line =~ /Perl|Python/
  puts "Scriptiong language mentioned #{line}"
end

line.sub(/Perl/, 'Ruby')
puts "After first replacement: #{line}"
line.gsub(/Python/, 'Ruby')
puts "After global replacement: #{line}"
