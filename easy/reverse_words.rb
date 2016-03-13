File.open(ARGV[0]).each_line do |line|
  unless line.empty?
    array = line.split(" ")
    puts array.reverse.join(" ")
  end
end
