File.open("sample.txt", "r").each_line do |line|
#File.open(ARGV[0]).each_line do |line|
  array = line.chomp.split(" ")
  array.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  puts array.join(" ")

end
