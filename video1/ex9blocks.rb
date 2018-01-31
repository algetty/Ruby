def call_block() # optional empty parens
  puts "Start of method"
  yield  # needed to stop and get the thing below
  yield
  puts "End of method"
end

# call_block { puts "in the block"}  # alt:

call_block do
  puts "in the block"
end

def call_block2
  yield("hello", 99)
end

# call_block2 do |str, num|
#   puts "#{str}, how much? $#{num}"
# end

call_block2 { |str, num|  puts "#{str}, how much? $#{num}"}

['cat', 'dog', 'horse'].each do |name|
  print name, " "
end
p ""

5.times { print "*"}  # method that takes a block
3.upto(6) { |i| print i}
('a'..'e').each{ |char| print char}
puts ""