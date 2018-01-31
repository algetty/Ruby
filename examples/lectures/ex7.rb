# hashes
a = {}
a = Hash.new
a = Hash.new(0)

z = {
  'mike' => 75,
  'bill' => 18,
  'alice' => 32
}

y = {
  :mike => 75,
  :bill => 18,
  :alice => 32
}

p z['mike']
z['joe'] = 44
y[:joe] = 44
p "#{z['joe']} and #{y[:joe]}"

p "#{z.has_key?('mike')} #{z.has_key?('jones')}"

histogram = Hash.new(0)
p histogram['key1']
p histogram['key1'] = histogram['key1'] + 1
p histogram['key1'] += 1
