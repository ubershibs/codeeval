require 'prime'

class String

  def palindrome?
    self == self.reverse
  end

end

999.downto(0) do |n|
  if Prime.prime?(n)
    if n.to_s.palindrome?
      puts n
      exit
    end
  end
end