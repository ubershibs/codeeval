File.open(ARGV[0]).each_line do |line|
  hex, binary = line.chomp.split("|")
  hex_arr = hex.split
  binary_arr = binary.split
  hex_arr.map! { |h| h.to_i(16) } 
  binary_arr.map! { |b| b.to_i(2) }
  if hex_arr.inject(0, :+) <= binary_arr.inject(0, :+)
    puts "True"
  else
    puts "False"
  end
end
