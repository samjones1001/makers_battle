class Player
  attr_reader :name, :hitpoints
  STARTING_HP = 50

  def initialize(name, hitpoints = STARTING_HP)
    @name = name
    @hitpoints = hitpoints
  end

  def take_damage
    @hitpoints -= 10
  end

  def dead?
    @hitpoints <= 0
  end
end
