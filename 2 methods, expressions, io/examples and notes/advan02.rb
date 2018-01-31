# Methods and Blocks

def take_block(p1)
  if block_given?  # returns true if a block is provided
    yield(p1)
  else
    p1
  end
end

p take_block("no block")
p take_block("no block") { |s| s.sub(/no /, '')}  # provide it with a block, replace "no" with nothing since we have a block
