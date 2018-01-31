# Defining a Method

def my_new_method(arg1, arg2, arg3)     # 3 arguments
  # Code for the method would go here
end

def my_other_new_method                 # No arguments
  # Code for the method would go here
end

# default values for args if user doesn't input any
def cool_dude(arg1 = "Miles", arg2 = "Coltrane", arg3 = "Roach")
  "#{arg1}, #{arg2}, #{arg3}" # return the string of args
end

p cool_dude
p cool_dude("Bart") # Ruby will fill the values in, so arg1 = Bart
p cool_dude("Bart", "Elwood")  # arg1 and arg2
p cool_dude("Bart", "Elwood", "Linus")  # arg1, arg2, and arg3

# Variable Length Argument Lists
def vargs(arg1, *rest)  # * says we have 0 or more other arguments, rest is an array
  "Got #{arg1} and #{rest.join(", ")}"
end

p vargs("one")
p vargs("one", "two")
p vargs "one", "two", "three"
