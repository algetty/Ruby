File.open("songdata.txt").each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  puts "File: #{file} (#{length})"
  puts "\tArtist: #{name}"
  puts "\tTitle: #{title}"
end

File.open("songdata.txt").each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  puts "Song: #{title}--#{name} (#{length})"
end

# We could use String.squeeze to remove to trim runs of repeated characters
puts "\nAfter Squeezing"
File.open("songdata.txt").each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze!(" ")
  puts "Song: #{title}--#{name} (#{length})"
end

# We could use scan to get the minutes and seconds in order to display the time as seconds only
puts "\nTime in seconds"
File.open("songdata.txt").each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze(" ")
  mins, secs = length.scan(/\d+/)
  puts "Song: #{title}--#{name} (#{mins.to_i * 60 + secs.to_i})"
end
