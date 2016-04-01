#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  range, list = line.chomp.split(";")
  list = list.split(" ").map{|x| x.to_i}
  sublist = []
  sublists = []
  range = range.to_i
  until list.size < range
    sublist = list[0..range-1]
    sublists << sublist
    list.shift(1)
  end
  sublists.map!{|sublist| sublist.inject(0){|x, sum| sum += x }}
  if sublists.max > 0 
    puts sublists.max
  else
    puts 0
  end
end
