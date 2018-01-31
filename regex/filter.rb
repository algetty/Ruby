
# regular expressions are a pattern matching capability inside most languages

messages = ["Don't take my hall pass, you ass. - User 101, 7:40 AM",
            "You are a total a$$-wipe - User 206, 7:45 AM",
            "As I've said earlier, the document must be read assiduously in order to assure quality - User 42 9:12 AM",
            "You're an a55hole, kiss my ASS - User 101, 9:40 PM"]

a = /^\s*[a-z]/ # regular expression inside //
# puts messages[0] =~ /ass/ # prints the first index of "ass"

# Method to detect and remove the word ass or any of its derivatives
def clean_message(str)
  str.gsub(/\b(A|a)(s|S|5|\$){2,}(hole)?(-wipe)?\b/, "***")
    # clean = "#{$`} #{'***'} #{$'}" # "$`" show us the part of the string before the
    # match, "$&" is what we found, "$'" is the rest of the string
end

messages.each do |msg|
  # clean up each messages
  cleaned = clean_message(msg)
  # print the cleaned message
  p cleaned
end
