File.open("songdata.txt").each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze!(" ")
  min, secs = length.scan(/\d+/)
  puts "Song: #{title}--#{name} (#{min.to_i * 60 + secs.to_i})"


  # puts "Song: #{title}--#{name} (#{length})"
  # puts " File: #{file} (#{length})"
  # puts "\tArtist: #{name}"
  # puts "\tTitle: #{title}\n"
end
