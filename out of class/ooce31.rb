
# In ruby there is a built-in variable called ARGV which is an array containing
# each of the command line arguments following the script name from the command
# line. For example if the command line was:
#
# $ ruby test.rb This is a test
#
# Then ARGV will be the array: ["This", "is", "a", "test"]
# Using ARGV along with our knowledge of regular expressions, and now I/O
# operations we will construct a short program to extract information concerning
# the services running on a system.