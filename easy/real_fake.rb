#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  digits = line.chomp.delete(" ").split("").map(&:to_i)
  digits = digits.partition.with_index {|_,i| i.even? }
  odds = digits[0].map{|n| n*2}
  odds = odds.inject(0){|y, sum| sum += y}
  evens = digits[1]
  evens = evens.inject(0){|x, sum| sum += x}
  sum = evens + odds
  if sum % 10 == 0
    puts "Real"
  else
    puts "Fake"
  end
end