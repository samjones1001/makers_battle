class Game
  attr_reader :player_1, :player_2, :current_player, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @opponent = player_2
  end

  def attack(player)
    player.take_damage
  end

  def switch_turns
    @opponent = @current_player
    @current_player = @current_player == player_1 ? player_2 : player_1
  end
end
