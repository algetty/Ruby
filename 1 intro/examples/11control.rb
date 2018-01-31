# Control Structures
count = 9
tries = 3

if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts "Enter a number"
end

# While
weight = 0
num_pallets = 0

while weight < 100 and num_pallets <= 30
  pallet += 1
  weight += pallet * 5
  num_pallets += 1
end

# Conditional Statments
radiation = 4500

if radiation > 3000
  puts "Danger, Will Robinson"
end

puts "Danger, Will Robinson" if radiation > 3000

square = 2
while square < 1000
  square = square * square
end

square = 2
square = square * square while square < 1000
