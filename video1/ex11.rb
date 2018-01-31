number = 1.23
greeting =  "hello"

puts "String: #{greeting} and Number: #{number}"
printf "String: %s and Number %5.2f\n", greeting, number

line = gets
print line

while line = gets
  if line =~ /Ruby/
    print line
  end
end

