alpha = ('A'..'Z').to_a

one_letter = alpha
two_letter = []
three_letter = []

0.upto(25) do |i|
  array = one_letter.map do |x|
    alpha[i] + x
  end
  two_letter += array
end

0.upto(25) do |i|
  array = two_letter.map do |x|
   alpha[i] + x
  end
  three_letter += array
end 

final_array = one_letter + two_letter + three_letter

File.open("sample.txt", "r").each_line do |line|
#File.open(ARGV[0]).each_line do |line|

  num = line.chomp.to_i - 1
  solution = final_array[num]
  puts solution
end