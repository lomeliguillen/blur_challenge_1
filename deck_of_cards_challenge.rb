class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck

  def initialize
    @cards = []
    @cards << Card.new(1, :hearts)
    @cards << Card.new(2, :diamonds)
    @cards << Card.new(3, :spades)
    @cards << Card.new(4, :hearts)
    @cards << Card.new(5, :spades)
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end


  def output
    @cards.each do |card|
      card.output_card
    end
  end

end

deck = Deck.new
deck.shuffle
deck.deal
deck.output