#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  string = line.chomp
  words = string.scan(/[a-zA-Z]+/)
  words.map!{|w| w.downcase}
  puts words.join(" ")
end