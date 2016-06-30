#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  string, numbers = line.split("|")
  solution = []
  num_array = numbers.split(" ")
  string_array = string.split("")
  num_array.each do |num|
    solution << string_array[num.to_i - 1]
  end
  puts solution.join("")
end