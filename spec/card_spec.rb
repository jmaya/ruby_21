require 'card'

RSpec.describe Card do
  it 'should start' do
    card = Card.new(color:'RED', suit:'SPADES', value:13)
    expect(card.color).to eql('RED')
    expect(card.suit).to eql('SPADES')
    expect(card.value).to eql(13)
  end

  it 'sholuld throw an error when an illegal option is given' do
    expect {
      Card.new()
    }.to raise_error KeyError
  end

  it 'return 0 for value if non given' do
      card = Card.new(color:'RED', suit:'SPADES')
      expect(card.value).to eql(0)
  end
end
