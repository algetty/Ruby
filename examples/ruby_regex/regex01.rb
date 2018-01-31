require './regex.rb'

# creating a pattern
a = Regexp.new('^\s*[a-z]') # -> /^\s*[a-z]/
b = /^\s*[a-z]/
c = %r{^\s*[a-z]}

name = "Fatts Waller"
name =~ /a/ # -> 1
name =~ /z/ # -> nil
/a/ =~ name # -> 1

show_regexp('very interesting', /t/) # -> very in<<t>>eresting
show_regexp('Fats Waller', /a/) # -> F<<a>>ts Waller
show_regexp('Fats Waller', /ll/) # -> Fats Wa<<ll>>er
show_regexp('Fats Waller', /z/) # -> no match
