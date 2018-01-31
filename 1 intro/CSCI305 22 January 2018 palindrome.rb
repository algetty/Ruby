# Write a quick ruby script to determine if a word is a palindrome. This script should prompt the user for a single line
# of input and then echo the input, its reverse, and then whether or not it is a palindrome (regardless of case).

def palindrome? str
  str == str.reverse
end

p "Enter a line of text"
line = gets.chomp

puts line
puts line.reverse

# Modify the program such that if given a string with multiple words that forms a single palindrome when spaces are
# removed, you can detect that as well. Echo out the space reduced form of the line, its reverse, and whether or not it
# is a palindrome.

line.gsub!(/\s/, '')
puts line
puts line.reverse

puts"#{line} is a palindrome" if palindrome? line.downcase

