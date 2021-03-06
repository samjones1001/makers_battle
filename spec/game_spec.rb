require 'game'

describe Game do
  let(:game)            { described_class.new(player, player_2) }
  let(:player)          { double :player }
  let(:player_2)        { double :player }

  it 'has a player one' do
    expect(game.player_1).to eq(player)
  end

  it 'has a player two' do
    expect(game.player_2).to eq(player_2)
  end

  it 'starts on player 1s turn' do
    expect(game.current_player).to eq(player)
  end

  it 'starts with player 2 as the opponent' do
    expect(game.opponent).to eq(player_2)
  end

  describe '#attack' do
    it 'causes the attacked player to receive damage' do
      expect(player).to receive(:take_damage)
      game.attack(player)
    end
  end

  describe '#switch_turns' do
    it 'can switch the current player to player 2' do
      game.switch_turns
      expect(game.current_player).to eq(player_2)
    end

    it 'can switch the current player back to player 1' do
      game.switch_turns
      game.switch_turns
      expect(game.current_player).to eq(player)
    end

    it 'switched the opponent' do
      game.switch_turns
      expect(game.opponent).to eq(player)
    end
  end

  describe '#game_over?' do
    it 'returns true when one player reaches 0hp' do
      allow(player).to receive(:dead?).and_return(true)
      expect(game.game_over?).to eq(true)
    end
  end
end
