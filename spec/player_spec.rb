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
      expect { the_beast.reduce_health }.to change{ the_beast.health }.by(-described_class::HEALTH_DEDUCTION)
    end
  end

  describe '#attack' do
    it "deducts a player's health when attacked" do
      expect { mark.attack(the_beast) }.to change{ the_beast.health }.by(-described_class::HEALTH_DEDUCTION)
    end
  end
end
