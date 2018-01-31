# Blocks and Iterators
# Blocks
{ puts "Hello" } # basic Blocks
do               ###
  puts "Hello"     # Also a block
end              ###

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }

def call_block2
  yield("hello", 99)
end

call_block {|str, num| puts "#{str}, how much? $#{num}"}

# Iterators
['cat', 'dog', 'horse'].each {|name| print name, " "}
puts ""

['cat', 'dog', 'horse'].each do |name|
  print name, " "
end

5.times { print "*" }
3.upto(6) {|i| print i}
('a'..'e').each { |char| print char }
