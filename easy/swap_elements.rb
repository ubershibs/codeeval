File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  list, swaps = line.chomp.split(":")
  list = list.split(" ")
  swaps = swaps.split(",")
  swaps.each do |swap|
    i, j = swap.split("-")
    list[i.to_i], list[j.to_i] = list[j.to_i], list[i.to_i]
  end
  puts list.join(" ")
end
    