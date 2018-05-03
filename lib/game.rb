class Game

  attr_reader :player_one, :player_two

  def initialize(player_one = Player.new("p1_name"), player_two = Player.new("p2_name"))
    @player_one = player_one
    @player_two = player_two
  end
end
