require 'card'

class Deck
  attr_reader :number_of_cards, :cards

  def initialize(number_of_cards = 52)
    @number_of_cards = number_of_cards
    @cards = initialize_cards
  end

  def size
    number_of_cards
  end

  def shuffle
    initialize_cards(shuffle:true)
  end

  private

  def initialize_cards(shuffle:false)
    cards = []
    (1..13).each do |value|
      %w[RED BLACK].each do |color|
        %w[SPADE HEART DIAMOND CLUB].each do |suit|
          cards << Card.new(
            suit:suit,
            color:color,
            value:value
          )
        end
      end
    end
    shuffle ? cards.shuffle : cards
  end
end
