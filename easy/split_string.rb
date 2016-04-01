def split_string(string, i)
  array = []
  while string.nil? == false
    until string.length > i do
      array << string[0..i]
      string = string[i+1..-1]
    end
    array << string unless string.nil?
  end
  return array
end