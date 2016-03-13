class String

  def digitize
    words = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    output = words.index(self)
  end

end

File.open("sample.txt", "r").each_line do |line|
  array = line.chomp.split(";")
  array.map!{ |word| word.digitize }
  puts array.join("")
end