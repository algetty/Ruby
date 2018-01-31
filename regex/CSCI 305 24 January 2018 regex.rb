# In Class Exercise
# Exercise: Find the Dates

# Use the following code snippet (which creates an array) and a loop to extract
# out the date of each contract from the text of each item of the array and
# print the date to the console.

contracts_arr =
  ["Hughes Missile Systems Company, Tucson, Arizona, is being awarded a
 $7,311,983 modification to a firm fixed price contract for the FY94 TOW missile
 production buy, total 368 TOW 2Bs. Work will be performed in Tucson, Arizona,
 and is expected to be completed by April 30, 1996. Of the total contract funds,
 $7,311,983 will expire at the end of the current fiscal year. This is a sole
 source contract initiated on January 14, 1991. The contracting activity is the
 U.S. Army Missile Command, Redstone Arsenal, Alabama (DAAH01-92-C-0260).",
   "Conventional Munitions Systems, Incorporated, Tampa, Florida, is being
 awarded a $6,952,821 modification to a firm fixed price contract for Dragon
 Safety Circuits Installation and retrofit of Dragon I Missiles with Dragon II
 Warheads. Work will be performed in Woodberry, Arkansas (90%), and Titusville,
 Florida (10%), and is expected to be completed by May 31, 1996. Contract funds
 will not expire at the end of the current fiscal year. This is a sole source
 contract initiated on May 2, 1994. The contracting activity is the U.S. Army
 Missile Command, Redstone Arsenal, Alabama (DAAH01-94-C-S076)."]

# group's code

def show_regex(a, re)
  if a =~ re
    print "#{$&}"
  else
    p "no match"
  end
end
contracts_arr.each do |ctr|
  print "Award: "
  show_regex(ctr, /\$\d+\,\d+\,\d+/)
  print " to be completed by: "
  show_regex(ctr, /\w+\s\d+,\s\d+/)
  print "\n"
end

# Issac's code:
contracts_arr.each do |contract|
  date =""
  award =""
  if contract =~ /(\$\d{1,3},\d{3},\d{3}\b).*(\b[A-Z]\w+\s\d{1,2},\s\d{4}\b)/
    award = $1
    date = $2
  end
  puts "Award: #{award} to be completed by: #{date}"
end