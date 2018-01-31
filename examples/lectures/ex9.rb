def call_block()
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block do
  puts "In the block"
end

def call_block2
  yield("hello", 99)
end

call_block2 { |str, num| puts "#{str}, how much? $#{num}" }

['cat', 'dog', 'horse'].each do |name|
  print name, " "
end
puts ""

5.times { print "*" }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }
puts ""
