File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  words = line.chomp.split(" ")
  puts words.max_by(&:length)
end
