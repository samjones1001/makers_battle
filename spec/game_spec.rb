require 'game'

describe Game do
  let(:game)      { described_class.new(player, player_2) }
  let(:player)    { double :player }
  let(:player_2)  { double :player }

  it 'has a player one' do
    expect(game.player_1).to eq(player)
  end

  it 'has a player two' do
    expect(game.player_2).to eq(player_2)
  end

  describe '#attack' do
    it 'causes the attacked player to receive damage' do
      expect(player).to receive(:take_damage)
      game.attack(player)
    end
  end
end
