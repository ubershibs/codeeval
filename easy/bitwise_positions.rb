# bitwise_positions

# File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  n, p1, p2 = line.split(",")
  n = n.to_i
  n = n.to_s(2).reverse
  p1 = p1.to_i - 1
  p2 = p2.to_i - 1
  if n[p1] == n[p2]
    puts "true"
  else
    puts "false"
  end
end
