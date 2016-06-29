
File.open("sample.txt", "r").each_line do |line|
  dividend, divisor = line.split(",")
  quotient = dividend.to_i / divisor.to_i
  remainder = dividend.to_i - (quotient * divisor.to_i)
  puts remainder
end
