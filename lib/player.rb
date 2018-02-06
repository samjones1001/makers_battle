class Player
  attr_reader :name, :hitpoints
  STARTING_HP = 50

  def initialize(name, hitpoints = STARTING_HP)
    @name = name
    @hitpoints = hitpoints
  end

  def attacked
    @hitpoints -= 10
  end
end
