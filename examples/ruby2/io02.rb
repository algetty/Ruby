require 'stringio'

# Reading and Writing Files
# can use File or IO to do most anything in Ruby
File.open("testfile") do |file| # gives us the actual file (pointer to file in memory), do allows us not to have to close the file, it autocloses for us
  while line = file.gets  # reads each line
    puts line
  end
end

IO.foreach("testfile") { |line| puts line}  # does exact same thing as above

IO.foreach("testfile") do |line|  # also equivalent
  puts line
end

# Iterators for Reading




# Writing to Files
File.open("testfile2", "w") do |file| # w, r, or rw: write, read, or read/write, defaults to r. Created the file by itself!
  file.puts "This is a test"
end

# C++ style
endl = "\n"  # endline
STDOUT << 99 << " red baloons" << endl

file = File.open("testfile3", "w")
file << 99 << " red balloons" << endl
file.close


# IO with Strings
ip = StringIO.new("now is\nthe time\nto lear\nRuby")
op = StringIO.new("", "w")

ip.each_line do |line|
  op.puts line.reverse
end

puts op.string