require 'time'

=begin
#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  times = line.chomp.split(" ")
  times = times.map{ |time| Time.parse(time) }.sort
  times = times.map{ |time| Time.at(time).utc.strftime("%H:%M:%S")}
  puts times.join(" ")
end
=end

#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  times = line.chomp.split(" ")
  times = times.sort.reverse
  puts times.join(" ")
end