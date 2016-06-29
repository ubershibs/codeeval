#File.open(ARGV[0]).each_line do |line|
File.open("easy/sample.txt", "r").each_line do |line|
  rows = line.chomp.split("|")
  new_rows = []
  rows.each do |row|
    row = row.split(" ")
    new_rows << row.map!(&:to_i)
  end
  columns = Array.new
  new_rows.each_with_index do |row, i|
    columns[i].push(row[i])
  end
  p columns
end