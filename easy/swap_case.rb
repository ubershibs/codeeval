#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  puts line.swapcase
end