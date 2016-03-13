1.upto(12) do |n|
  1.upto(12) do |m|
    x = n*m
    if m == 1
      print x
    else
      x = x.to_s
      case
      when x.length == 1
        print "   #{x}"
      when x.length == 2
        print "  #{x}"
      when x.length == 3
        print " #{x}"
      end
    end
  end
  print "\n"
end
