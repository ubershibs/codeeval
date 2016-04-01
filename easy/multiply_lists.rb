#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  list1, list2 = line.chomp.split("|")
  list1 = list1.split(" ")
  list2 = list2.split(" ")
  solution = []
  (0..list1.size-1).each do |i|
    solution << list1[i].to_i * list2[i].to_i
  end
  puts solution.join(" ")
end