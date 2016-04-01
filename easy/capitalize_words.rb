#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  line.chomp!
  line.gsub!(/\b./, &:capitalize)
  puts line
end
