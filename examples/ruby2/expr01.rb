# Deeper Undrestanding of Expressions

# Parallel Assignment:
x = 0
a, b, c, = x, (x += 1), (x += 1)
p "#{a}, #{b}, #{c}"

# Boolean expressions defined?, and, or, not


# Comparison operators ==, ===, <=>, <, <=, >=, >, =~, eql?, equal?


# if and unless Expressions
if x == 4
  puts 'This appears to be true.'
elsif x == 5
  puts "it was 5"
end

unless x == 4  # if the condition is false
  puts 'This appears to be false.'
else
  puts 'This appears to be true.'
end

# if and unless modifiers
x = 4
puts 'This appears to be false.' unless x == 4
puts 'This appears to be true.' if x == 4

# case expressions
year = 2018
leap = case
         when year % 400 == 0; true  # semicolon because two statemens in one line
         when year % 100 == 0; false
         else year % 4 == 0
       end

puts leap

music_info = ["title=Title Test",
"artist=Artist Test",
"track=Track Test"]

music_info.each do |line|
  case line
    when /title=(.*)/
      puts "Title is #{$1}"
    when /artist=(.*)/
      puts "Artist is #{$1}"
    when /track=(.*)/
      puts "Track is #{$1}"
  end
end