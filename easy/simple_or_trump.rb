class Card
  attr_reader :rank, :suit

  def initialize(card, trump)
    @suit = card[-1]
    @rank = get_rank(card.chop)
    @trump = trump
  end

  def get_rank(string)
    @rank = case string
    when "A" then 14
    when "K" then 13
    when "Q" then 12
    when "J" then 11
    else
      string.to_i
    end
  end

  def is_trump?
    @suit == @trump
  end
end

#File.open(ARGV[0]).each_line do |line|
File.open("sample.txt").each_line do |line|
  c1, c2, _, trump = line.chomp.upcase.split

  card1 = Card.new(c1, trump)
  card2 = Card.new(c2, trump)

  if card1.rank == card2.rank
    if card1.is_trump?
      puts c1
    elsif card2.is_trump?
      puts c2
    else
      puts "#{c1} #{c2}"
    end
  elsif card1.rank > card2.rank
    puts (card2.is_trump? && !card1.is_trump?) ?  c2 : c1
  elsif card2.rank > card1.rank
    puts card1.is_trump? && !card2.is_trump? ? c1 : c2
  end
end
