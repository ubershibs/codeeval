#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt", "r").each_line do |line|
  array = line.chomp.split("")
  frequency = Hash.new(0)
  array.each do |letter|
    if letter =~ /[a-zA-Z]/
      letter = letter.downcase
      frequency[letter] += 1
    end
  end
  frequency = frequency.sort_by{|k,v| v}.reverse
  points = 26
  total_points = 0
  frequency.each do |v|
    letter_points = v[1] * points
    points -= 1
    total_points += letter_points
  end
  puts total_points
end
