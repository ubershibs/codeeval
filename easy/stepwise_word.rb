#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  array = line.chomp.split(" ")
  sorted = array.group_by(&:size)
  longest_group = sorted.max
  longest = longest_group[1][0]
  stepwise = []
  i = longest.length
  i.downto(1) do |j|
    z = i-j
    str = "#{"*" * z}#{longest[z]}"
    stepwise << str
  end
  puts stepwise.join(" ")
end  
    
  