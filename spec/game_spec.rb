require 'game'

describe Game do
  let(:the_beast) { double :the_beast, health: 100 }
  let(:mark) { double :mark, health: 10 }
  subject(:game) { described_class.new(the_beast, mark) }

  describe '#initialze' do
    it 'initializes player one' do
      expect(subject.player_one).to eq(the_beast)
    end
    it 'initializes player one' do
      expect(subject.player_two).to eq(mark)
    end
  end

  describe '#attack' do
    it "deducts a player's health when attacked" do
      expect(the_beast).to receive(:reduce_health)
      subject.attack(the_beast)
    end
  end

end
