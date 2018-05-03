require 'game'

describe Game do
  let(:the_beast) { double :the_beast }
  let(:mark) { double :mark }
  subject(:game) { described_class.new(the_beast, mark) }

  describe '#initialze' do
    it 'initializes player one' do
      expect(subject.player_one).to eq(the_beast)
    end
    it 'initializes player one' do
      expect(subject.player_two).to eq(mark)
    end
  end
end
