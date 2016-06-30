sayings = [', yeah!', ', this is crazy, I tell ya.', ', can U believe this?', ', eh?', ', aw yea.', ', yo.', '? No way!', '. Awesome!']
counter = 0
rotation = 0

#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  array = line.split("")
  solution = []
  array.each do |char|
    if rotation > 7
      rotation = 0
    end
    if char == '.'||char == '!'||char == '?'
      counter += 1
      if counter % 2 == 0
        char = sayings[rotation]
        rotation += 1
      end
    end
    solution << char
  end
  puts solution.join('') 
end