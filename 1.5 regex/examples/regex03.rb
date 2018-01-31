require './regex.rb'
# anchors

# ^ matches the beginning of a line, $ matches the end of the line (excluding the newline character (unless the m modifier is used))
show_regexp("this is\nthe time", /^the/) # -> this is\n<<the>> time
show_regexp("this is\nthe time", /is$/) # -> this <<is>>\nthe time

# \A matches the beginning of a string and \z and \Z match the end of a string (though if the string ends with \n \Z will not include the \n)
show_regexp("this is\nthe time", /\Athis/) # -> <<this>> is\nthe time
show_regexp("this is\nthe time", /\Athe/) # -> no match

# the patterns \b and \B match word boundaraies and nonword boundaries, respectively
show_regexp("this is\nthe time", /\bis/) # -> this <<is>>\nthe time
show_regexp("this is\nthe time", /\Bis/) # -> th<<is>> is\nthe time
