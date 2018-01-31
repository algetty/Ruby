# Pattern Based substitution

a = "the quick brown fox"
a.sub(/[aeiou]/, "*") # -> th* quick brown fox
a.gsub(/[aeiou]/, "*") # -> th* q**ck br*wn f*x
a.sub(/\s\S+/, '') # -> the brown fox
a.gsub(/\s\S+/, '') # -> the

a.sub(/^./) { |match| match.upcase } # -> The quick brown fox
a.gsub(/[aeiou]/) { |vowel| vowel.upcase } # -> thE qUIck brOwn fOx

def mixed_case(name)
  name.gsub(/\b\w/) { |first| first.upcase }
end

mixed_case("fats waller") # -> Fats Waller
mixed_case("louis armstrong") # -> Louis armstrong
mixed_case("strength in numbers") # -> Strength In Numbers
