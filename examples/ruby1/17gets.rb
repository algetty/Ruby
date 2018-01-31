# output
number = 1.23
greeting = "Hello"

puts "String: #{greeting} Number: #{number}"
printf("String: %s Number: %5.2f\n", greeting, number)

# input from Standard input
line = gets
print line

while line = gets
  if line =~ /Ruby/
    print line
  end
end
