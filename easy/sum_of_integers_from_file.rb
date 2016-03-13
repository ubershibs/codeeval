m = 0

File.open("sample.txt", "r").each_line do |line|
# File.open(ARGV[0]).each_line do |line|
  n = line.chomp.to_i
  m += n
end

puts m
