File.open("sample.txt","r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  x, n = line.split(",")
  x = x.to_i
  n = n.to_i
  m = 0
  until m >= x do
    m += n
  end
  puts m
end
