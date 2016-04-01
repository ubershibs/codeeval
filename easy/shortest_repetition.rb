#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  string = line.chomp
  sub_size = 1
  substring = string[0]
  (1..string.length-1).each do |i|
    if string[sub_size..-1].index(substring) != 0
      sub_size += 1
      substring += string[i]
    end
  end
   puts sub_size
end