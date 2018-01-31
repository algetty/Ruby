
# out of class exercise

def main()

  if ARGV.length == 0
    puts "no arguments provided...\nuseage: ruby services.rb -s file_name [service list]"

  elsif ARGV[0] == "-h"
    puts "Usage: ruby services.rb -s file_name [service list]\n\n"

    puts "Options:"
    puts "-h Prints this message"
    puts "-s file_name  The name of the service file to extract info from\n\n"

    puts "Arguments:"
    puts "service list  A list of the services and their optional protocol"
    puts "\tin the form service/protocol where the protocol can"
    puts "\tbe either udputs or tcp."

  elsif ARGV[0] == "-s"
    if ARGV[1] == nil
      puts "No arguments provided..."
      puts "Usage: ruby services.rb -s file_name [service list]"
    else
      file = ARGV[1]
      puts file
    end
  end


end

main()