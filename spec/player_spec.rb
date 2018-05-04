require 'player'

describe Player do
  subject(:the_beast) { described_class.new('The Beast') }
  subject(:mark) { described_class.new('Mark') }
  describe '#name' do
    it "returns the player's name" do
      expect(the_beast.name).to eq('The Beast')
    end
  end

  describe '#health' do
    it "displays a player's health" do
      expect(the_beast.health).to eq(described_class::MAX_HEALTH)
    end

    it "deducts a player's health" do
      allow(the_beast).to receive(:random_health).and_return(20)
      expect { the_beast.reduce_health }.to change{ the_beast.health }.by(-20)
    end
  end


end
