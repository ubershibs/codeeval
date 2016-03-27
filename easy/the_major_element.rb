#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  arr = line.split(",")
  count = Hash.new(0)
  arr.each do |n|
    count[n] += 1
  end
  max_n = count.max_by {|k,v| v}[0]
  puts max_n
  if count[max_n] > arr.length/2
    puts count[max_n] + ">" + arr.length
    puts max_n
  else
    puts count[max_n] + ">" + arr.length
    puts "None"ef2v
  end
end
