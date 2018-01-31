# def say_goodnight name
#   result = "Goodnight, " + name
#   return result # don't need because the last line of the method is the return value
# end

# more Ruby-esque
def say_goodnight name
  result = "Goodnight, #{name} "
end

puts say_goodnight "John-Boy"
puts say_goodnight "Mary-Ellen"
puts say_goodnight ('Pa')

puts "And goodnight, \nGrandma"

