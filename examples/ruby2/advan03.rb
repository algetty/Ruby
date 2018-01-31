
# a little more advanced Method return values
# minor stuff for dealing with methods

def method_one
  "one"  # could have put "return" before the "one", but we don't need to use the return keyword because the last expression's value is the return value
end

p method_one

def method_two arg
  case  # like a switch in Java, usually takes in some object we want to work with
  when arg > 0  # whens are the cases in Java
    "positive"
  when arg < 0
    "negative"
  else  # "default" in Java
    "zero"
  end
end

p method_two 23
p method_two -1
p method_two 0

def method_three  # a method that returns more than one item
  100.times do |num|
    square = num * num
    return num, square if square > 1000  # using the return keyword to exit the loop
  end
end

p method_three
val, sq = method_three
p "Value is #{val} and its square is #{sq}"  # can also do this in Python, but not Java

# Expanding Arrays in Method Calls

def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

p five(1, 2, 3, 4, 5)
p five(1, 2, 3, *['a', 'b'])  # expand the array by giving it the star
p five(*(10..14).to_a)
