class Player
  MAX_HEALTH = 100
  HEALTH_DEDUCTION = 10

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = MAX_HEALTH
  end

  def reduce_health
    @health -= HEALTH_DEDUCTION
  end
end
