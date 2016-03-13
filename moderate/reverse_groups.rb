#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  list, limit = line.chomp.split(";")
  limit = limit.to_i
  list = list.split(",")
  groups = list.each_slice(limit).to_a
  groups.each do |group|
    if group.size == limit
      group.reverse!
    end
  end
  puts groups.join(",")
end
