class String
  def to_hash(arr_sep=', ', key_sep=':')
    array = self.split(arr_sep)
    hash = {}

    array.each do |e|
      key_value = e.split(key_sep)
      hash[key_value[0]] = key_value[1]
    end

    return hash
  end
end

File.open("sample.txt", "r").each_line do |line|
  hash = line.chomp.to_hash
  v = hash["Vampires"].to_i
  w = hash["Witches"].to_i
  z = hash["Zombies"].to_i
  h = hash["Houses"].to_i
  total =((3 * v) + (5 * w) + (4 * z)) * h
  per_child = total / (v + w + z)
  puts per_child
end

