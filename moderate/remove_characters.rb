#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  string, scrub = line.split(", ")
  scrub_letters = scrub.split("")
  scrub_letters.each do |letter|
    string.gsub!(letter, "")
  end
  puts string
end