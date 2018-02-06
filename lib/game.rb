class Game
  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def attack(player)
    player.take_damage
  end

  def switch_turns
    @current_player = @current_player == player_1 ? player_2 : player_1
  end
end
