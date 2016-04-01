#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  number = line.chomp.to_i
  puts number.even? ? 1 : 0
end