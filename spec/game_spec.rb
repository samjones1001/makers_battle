require 'game'

describe Game do
  let(:game)    { described_class.new }
  let(:player)  { double :player }
  
  describe '#attack' do
    it 'causes the attacked player to receive damage' do
      expect(player).to receive(:take_damage)
      game.attack(player)
    end
  end
end
