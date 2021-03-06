class Fixnum
  ROMAN_NUMBERS = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
       9 => "IX",
       5 => "V",
       4 => "IV",
       1 => "I"
  }

  def roman
    n = self
    roman = ""
    ROMAN_NUMBERS.each do |value, letter|
      roman << letter*(n/value)
      n = n % value
    end
    return roman
  end
end

File.open(ARGV[0]).each_line do |line|
#File.open("sample.txt", "r").each_line do |line|
  puts line.chomp.to_i.roman
end
