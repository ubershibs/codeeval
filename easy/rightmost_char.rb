# rightmost_char.rb
#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  string, char = line.chomp.split(",")
  x = string.rindex(char) unless char.nil?
  if x.nil?
    puts "-1"
  else
    puts x
  end
end