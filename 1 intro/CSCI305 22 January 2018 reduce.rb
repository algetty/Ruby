# Write a ruby program which prompts for and reads one line of input. It then echos the line, then prints it repeatedly,
# each time removing every second character. It continues until no more characters can be removed. Treat all characters
# alike; no special treatment for spaces or punctuation

p "Enter a line of text"
line = gets.chomp
puts line

until line.length < 2
  new_line = ""
  (0..(line.length - 1)).step(2) do |i|
    new_line += line[i]
  end

  puts new_line
  line = new_line
end
