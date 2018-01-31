require './regex.rb'
# Repetition and Alternation

# We can use repetition in our Patterns
#  r* matches zero or more occurrences of r.
#  r+ matches one or more occurrences of r.
#  r? matches zero or one occurrences of r.
#  r{m,n} matches at least m and at most n occurrences of r
#  r{m,} matches at least m occurrences of r
#  r{m} matches exactly m occurrences of r

a = "The moon is made of cheese"
show_regexp(a, /\w+/) # -> <<The>> moon is made of cheese
show_regexp(a, /\s.*\s/) # -> The<< moon is made of >>cheese
show_regexp(a, /\s.*?\s/) # -> The<< moon >>is made of cheese
show_regexp(a, /[aeiou]{2,99}/) # -> The m<<oo>>n is made of cheese
show_regexp(a, /mo?o/) # -> The <<moo>>n is made of cheese

# We can provide alternates using the vertical bar |
a = "red ball blue sky"
show_regexp(a, /d|e/) # -> r<<e>>d ball blue sky
show_regexp(a, /al|lu/) # -> red b<<al>>l blue sky
show_regexp(a, /red ball|angry sky/) # -> <<red ball>> blue sky
