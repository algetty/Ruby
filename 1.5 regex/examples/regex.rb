def show_regex(a, re)
  if a =~ re
    p "#{$`}<<#{$&}>>#{$'}"
  else
    p "no match"
  end
end
