array = Array.new(256, 0)
matrix = Array.new(256, array)

File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  command = line.chomp.split(" ")
  if command[0] == "SetCol"
    col = command[1].to_i
    num = command[2].to_i
    new_matrix = []
    matrix.each do |arr|
      arr[col] = num
      new_matrix << arr
    end
    matrix = new_matrix
  elsif command[0] == "SetRow"
    row = command[1].to_i
    num = command[2].to_i
    focus = Array.new(256, num)
    matrix[row] = focus
  elsif command[0] == "QueryRow"
    row = command[1].to_i
    to_sum = matrix[row]
    row_sum = to_sum.inject(0) { |sum, n| sum + n }
    puts row_sum
  elsif command[0] == "QueryCol"
    col = command[1].to_i
    sum = 0
    matrix.each do |j| 
      sum += j[col] 
    end
    puts sum
  end
end
