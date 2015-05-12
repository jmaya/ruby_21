require 'deck'
require 'card'

RSpec.describe Deck do
  context "With default 52 cards" do

    let(:deck) { Deck.new }

    it 'should have 52 cards' do
      expect(deck.size).to eql 52
    end

    it 'the first item should be a card' do
      expect(deck.cards.first).to be_a(Card)
    end

    it 'should sum up the values' do
      expect(deck.cards.collect(&:value).inject{|sum,x| sum + x}).to eql(728)
    end

    it 'should be in order' do
      expect(deck.cards.first.value).to eql(1)
      expect(deck.cards.first.suit).to eql('SPADE')
      expect(deck.cards.first.color).to eql('RED')
    end

    it 'should shuffle' do
      deck.shuffle
      expect(deck.cards.first.value).not_to eql(1)
    end
  end

  it 'should have a variable size on initialize' do
    deck = Deck.new(2)
    expect(deck.size).to eql(2)
  end
end
