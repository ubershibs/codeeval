File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  re =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  puts "True" if line.chomp.match re
  puts "False" if not line.chomp.match re
end
