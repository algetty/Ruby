require './regex.rb'
# Character Classes

# A character class is a set of characters between square brackets: [characters] and matches any single character between the brackets
# For example: [aeiou] will match any vowel, [,.:;!?] matches punctuation, and so on. The significance of special characters is turned off inside the brackets but normal string substitution like \n or \b remains
# There are also abbreviations for classes such as \s for white space, \S for non-space characters, \d for digits (0 - 9), \D for any non-digit character, \w for any word character (A-Z, a-z, 0-9, _), and \W for any non-word character
show_regexp('Price $12.', /[aeiou]/) # -> Pr<<i>>ce $12.
show_regexp('Price $12.', /[\s]/) # -> Price<< >>$12.
show_regexp('Price $12.', /[\d]/) # -> Price $<<1>>2.
show_regexp('Price $12.', /[[:punct:]aeiou]) # -> Pr<<i>>ce $12.

# You can also use ranges inside the brackets to represent a range of characters
a = 'see [Design Patterns-page 123]'
show_regexp(a, /[A-F]/) # -> see [<<D>>esign Patterns-page 123]
show_regexp(a, /[A-Fa-f]/) # -> s<<e>>e [Design Patterns-page 123]
show_regexp(a, /[0-9]/) # -> see [Design Patterns-page <<1>>23]
show_regexp(a, /[0-9][0-9]/) # -> see [Design Patterns-page <<12>>3]

# Negating a character class and using special characters.
# special characters like [] and - must occur at the start of a class
# You can select all characters except those provided by starting a class with ^
show_regexp(a, /[]]/) # -> see [Design Patterns-page 123<<]>>
show_regexp(a, /[-]/) # -> see [Design Patterns<<->>page 123]
show_regexp(a, /[^a-z]/) # -> see<< >>[Design Patterns-page 123]
show_regexp(a, /[^a-z\s]/) # -> see <<[>>Design Patterns-page 123]

# as mentioned above some classes used so often there are special abbreviations
show_regexp("it costs $12.", /\s/) # -> it<< >>costs $12.
show_regexp("it costs $12.", /\d/) # -> it costs $<<1>>2.

# Finally, you can use a period (.) to represent any character except a newline
a = "It costs $12."
show_regexp(a, /c.s/) # -> It <<cos>>ts $12.
show_regexp(a, /./) # -> <<I>>t costs $12.
show_regexp(a, /\./) # -> It costs $12<<.>>
