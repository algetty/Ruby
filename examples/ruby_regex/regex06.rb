require './regex.rb'
# Grouping

# we can use parentheses to group items, each group is then treated as its own regex01
show_regexp('banana', /an*/) # -> b<<an>>ana
show_regexp('banana', /(an)*/) # -> <<>>banana
show_regexp('banana', /(an)+/) # -> b<<anan>>a

a = 'red ball blue sky'
show_regexp(a, /blue|red/) # -> <<red>> ball blue sky
show_regexp(a, /(blue|red) \w+/) # -> <<red ball>> blue sky
show_regexp(a, /(red|blue) \w+/) # -> <<red ball>> blue sky
show_regexp(a, /red|blue \w+/) # -> <<red>> ball blue sky

show_regexp(a, /red (ball|angry) sky/) # -> no match
a = 'the red angry sky'
show_regexp(a, /red (ball|angry) sky/) # -> the <<red angry sky>>
