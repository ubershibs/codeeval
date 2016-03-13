# sum_of_digits
File.open(ARGV[0]).each_line do |line|
  array = line.chomp.to_s.split("").map {|n| n.to_i }
  sum = array.inject(0, :+)
  puts sum
end