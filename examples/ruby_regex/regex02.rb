require './regex.rb'
# Regexp Patterns

show_regexp('kangaroo', /angar/) # -> k<<angar>>oo
show_regexp('!@%&->=+', /%&/) # -> !@<<%&>>-_=+

# within a pattern all characters except ., |, (, ), [, ], {, }, +, \, ^, $, *, and ? match themselves, to match these characters you need to escape them
show_regexp('yes | no', /\|/) # -> yes <<|>> no
show_regexp('yes (no)', /\(no\)/) # -> yes <<(no)>>
show_regexp('are you sure?', /e\?/) # -> are you sur<<e?>>
