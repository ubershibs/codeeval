HIDDENS = ['a','b','c','d','e','f','g','h','i','j']
VISIBLES = ['0','1','2','3','4','5','6','7','8','9']

File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|


  arr = line.chomp.split("")
  keepers = []
  arr.each do |c|
    if HIDDENS.include?(c)
      c = HIDDENS.index(c).to_s
    end
    if VISIBLES.include?(c)
      keepers << c
    end
  end
  if keepers.empty?
    puts "NONE"
  else
    puts keepers.join("")
  end
end
