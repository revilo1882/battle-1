require 'player'

describe Player do
  subject(:player) { described_class.new('The Beast') }
  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq('The Beast')
    end
  end

  describe '#health' do
    it "displays a player's health" do
      expect(player.health).to eq(described_class::MAX_HEALTH)
    end

    it "deducts a player's health" do
      expect { player.reduce_health }.to change{ player.health }.by(-described_class::HEALTH_DEDUCTION)
    end
  end
end
