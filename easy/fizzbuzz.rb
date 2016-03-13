File.open(ARGV[0]).each_line do |line|
  f, b, limit = line.split(" ").map {|n| n.to_i }
  result = []
  1.upto(limit) do |n|
    i = n
    i = "F" if n % f == 0
    i = "B" if n % b == 0
    i = "FB" if n % f == 0 && n % b == 0
    result << i
  end

  puts result.join(" ")

end

=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
#...
end
=end