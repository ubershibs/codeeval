#lines = File.open("sample.txt", "r").readlines
lines = File.open(ARGV[0]).readlines
limit = lines.shift
lines = lines.sort_by(&:length).reverse
limit.to_i.times do 
  line = lines.shift
  puts line 
end
