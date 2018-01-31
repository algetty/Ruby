# hashes = dictionaries in Python
# creating new hashes:
a = {}
a = Hash.new
a = Hash.new(0)

z = {
    'mike' => 75,
    'bill' => 18,
    'alice' => 32
}

y = {
    :mike => 75, #symbols: special Ruby data type, can't be changed
    :bill => 18,
    :alice => 31
}

p z['mike']
p z['joe'] # gives nil if it doesn't exsist

z['joe'] = 44
y[:joe] = 44
p "#{z['joe']} and #{y[:joe]}"

p "#{z.has_key?('mike')} #{z.has_key?('jones')}" # convention that any boolean function has a ?

histogram = Hash.new(0)
p histogram['key1']
p histogram['key1'] = histogram['key1'] + 1
p histogram['key1'] += 1

