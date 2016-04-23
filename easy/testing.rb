File.open("sample.txt", "r").each_line do |line|
  bugs = 0
  dev, des = line.split(" | ")
  dev = dev.split("")
  des = des.split("")
  dev.each_index do |i|
    if dev[i] != des[i]
      bugs += 1
    end
  end
  if bugs == 0
    puts "Done"
  elsif bugs <= 2
    puts "Low"
  elsif bugs <= 4
    puts "Medium"
  elsif bugs <= 6
    puts "High"
  elsif bugs > 6
    puts "Critical"
  end
end
