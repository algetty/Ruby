# Loops
# while line = gets  # while this is true, we continue executing
#   # ...
# end
#
# until x> 60  # while this is FALSE, we continue executing
#   # ...
# end


# Iterators

IO.foreach("ordinal") do |line|
  if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
    print line
  end
end  # prints the whole file

print "Hello\n" while false
begin
  print "Goodbye\n"
end while false  # creating a do while for us; executes block then does while

3.times do
  print "Ho! "
end

0.upto(3) do |x|
  print x, " "
end

0.step(12, 3) { |x| print x, " "}
puts ""


# hashes and arrays
# array:
[1, 1, 2, 3, 5].each {|val| print val, " "}
puts ""

# hash:"#{
hash = { "name" => "Isaac", "course" => "CSCI 305"}
hash.each do |key,value|
  puts "#{key} => #{value}"
end


# For..In
for i in ['fee', 'fi', 'fo', 'fum']
  print i, ' '
end
for i in 1..3
  print i, " "
end
for i in File.open("ordinal").find_all { |line| line =~ /d$/ }
  print i.chomp, " "
end
puts


# Break, Redo, Next
while line = gets  # while we are taking input in from the console
  next if line =~ /^\s*#/ # skip comments, skip the rest of the actual loop
  break if line =~ /^END/ # stop at end
  redo if line.gsub!(/`(.*?)`/) {eval($1)}  # exit and start at the top
end

# Retry
