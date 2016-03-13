def possible_moves(origin)
  poss = Array.new
  poss[0] = [(origin[0]+2), (origin[1]+1)]
  poss[1] = [(origin[0]+2), (origin[1]-1)]
  poss[2] = [(origin[0]-2), (origin[1]+1)]
  poss[3] = [(origin[0]-2), (origin[1]-1)]
  poss[4] = [(origin[0]-1), (origin[1]+2)]
  poss[5] = [(origin[0]-1), (origin[1]-2)]
  poss[6] = [(origin[0]+1), (origin[1]+2)]
  poss[7] = [(origin[0]+1), (origin[1]-2)]
 return poss
end

def get_valid_moves(poss)
  valid_moves = []
  poss.each do |set| 
    if is_valid?(set)
      valid_moves << set
    end
  end
  return valid_moves
end

def is_valid?(location)
  return false unless location.is_a?(Array)
  if location[0].between?(0,7) && location[1].between?(1,8)
    return true
  else
    return false
  end
end

#File.open("sample.txt", "r").each_line do |line|
File.open(ARGV[0]).each_line do |line|
  origin_str = line.chomp
  legend = %w(a b c d e f g h)
  origin = [legend.index(origin_str[0]), origin_str[1].to_i]
  poss = possible_moves(origin)
  valid = get_valid_moves(poss)
  printable_moves = []
  valid.each do |a,b|
    a_ltr = legend[a]
    move = "#{a_ltr}#{b}"
    printable_moves << move
    printable_moves.sort!
  end
  puts printable_moves.join(" ")
end