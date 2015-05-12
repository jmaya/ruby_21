class Card
  attr_reader :color, :suit, :value

  def initialize(options={})
    @color = options.fetch(:color)
    @suit = options.fetch(:suit)
    @value = options.fetch(:value) { 0  }
  end
end
