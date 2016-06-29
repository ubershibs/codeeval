File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  array = line.chomp.split(",")
  words = []
  digits = []
  array.each do |item|
    if item =~ /[a-zA-Z]+/
      words << item
    else
      digits << item
    end
  end
  words = words.join(",")
  digits = digits.join(",")
  if words.empty?
    puts digits
  elsif digits.empty?
    puts words
  else
    puts "#{words}|#{digits}"
  end
end
