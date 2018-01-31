# CONSTANT
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

puts is_valid_email?("jordan@hudgens.com") ? "Valid" : "Invalid"
puts is_valid_email?("jordanhudgens.com") ? "Valid" : "Invalid"
puts is_valid_email?("jordan.h@hudgens.com") ? "Valid" : "Invalid"
puts is_valid_email?("jordan@hudgens") ? "Valid" : "Invalid"
puts is_valid_email?("jordan_h@hudgens.org") ? "Valid" : "Invalid"
