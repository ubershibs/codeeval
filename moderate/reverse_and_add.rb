class String

  def palindrome?
    self == self.reverse
  end

end

def sum_and_check(number, i=1)
  number = number.to_s
  reverse = number.reverse
  sum = number.to_i + reverse.to_i
  if sum.to_s.palindrome?
    puts "#{i} #{sum}"
  else 
    sum_and_check(sum, i+1)
  end
end
  
File.open("sample.txt", "r").each_line do |line|
#File.open(ARGV[0]).each_line do |line|
  number = line.chomp
  sum_and_check(number)
end