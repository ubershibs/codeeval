def fib_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  fib_rec(n-1) + fib_rec(n-2)
end

# File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  n = line.chomp.to_i
  puts fib_rec(n)
end
