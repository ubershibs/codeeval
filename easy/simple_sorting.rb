#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  array = line.chomp.split(" ").map {|n| n.to_f}.sort
  array = array.map{|n| sprintf('%.3f', n)}
  puts array.join(' ')
end
  