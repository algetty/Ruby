print "Triangle height: "
h = gets.to_f  # gives us the height of the triangle as a floating point. use to_i for integers (I think)
print "Triangle width: "
w = gets.to_f
area = 0.5 * h * w  # .5 is a float and changed everythign to float
puts "triangle height #{h} width #{w}: has area #{area}"
