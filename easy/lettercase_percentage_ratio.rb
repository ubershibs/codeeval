#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  line.chomp!
  uppercase = 0.0
  lowercase = 0.0
  upper = /[A-Z]/
  lower = /[a-z]/
  line.each_char do |letter|
    if lower.match(letter)
      lowercase += 1
    elsif upper.match(letter)
      uppercase += 1
    end
  end
  l_ratio = (lowercase/line.length) * 100
  u_ratio = (uppercase/line.length) * 100
  puts "lowercase: #{sprintf('%.2f', l_ratio)} uppercase: #{sprintf('%.2f', u_ratio)}"
end