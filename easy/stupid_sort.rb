  def stupid_iterations(array, i)
    return array if i.zero?
    array = stupid_sort(array)
    stupid_iterations(array, i-1)
  end

  def stupid_sort(array, j=0)
    h = j + 1
    return array if h >= array.size
    if array[j] < array[h]
      stupid_sort(array, h)
    else
      array[j], array[h] = array[h], array[j]
      return array
    end
  end

File.open(ARGV[0]).each_line do |line|
  numbers, i_s = line.split("|")
  array = numbers.split(" ")
  array.map! { |n| n.to_i }
  i = i_s.to_i
  result = stupid_iterations(array, i)
  puts result.join(" ")
end