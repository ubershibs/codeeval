File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  tables = line.chomp.split("|")
  split_tables = []
  tables.each do |table|
    group = table.chomp.split(" ")
    split_tables << group
  end
  count = split_tables[0].length - 1
  artists = []
  (count+1).times do
    array = []
    artists.push(array)
  end
  split_tables.each do |table|
    0.upto(count) do |i|
      vote = table[i].to_i
      artists[i] << vote
    end
  end
  results = []
  artists.each do |artist|
    results << artist.max
  end
  puts results.join(" ")
end
