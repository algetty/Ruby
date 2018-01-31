# hashes
z = { 'mike' => 75, 'bill' => 18, 'alice' => 32 }
z['joe'] = 44
p z['bill'], " ", z['joe'], " ", z["smith"], "\n"
p z.has_key?('mike'), " ", z.has_key?("jones"), "\n"

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

# accessing
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon'] # returns nil

# Specifying the default value
histogram = Hash.new(0) # 0 will be the default value
p histogram['key1'] # 0
p histogram['key1'] = histogram['key1'] + 1
p histogram['key1'] # 1
