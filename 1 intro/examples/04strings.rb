# From Dr. Thomas W Bennet

# Double-quoted strings can substitute variables.
a = 17
p "a = #{a}";
p 'a = #{a}';

# If you're verbose, you can create a multi-line string like this.
b = """
This is a longer string,
perhaps some instructions or agreement
goes here.  By the way,
a = #{a}.
"""

p "\n[[[" + b + "]]]"

p "\nActually, any string
can span lines.  The line\nbreaks just become
part of the string.
"
