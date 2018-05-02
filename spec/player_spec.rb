require 'player'

describe Player do
  subject(:player) { described_class.new('The Beast') }
  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq('The Beast')
    end
  end
end
