
class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @whos_turn = @player_one
  end

  def attack(name)
    name.receive_damage
  end

  # def switch_turn
  #   @whos_turn == @player_one ? @whos_turn = @player_two : @whos_turn = @player_one
  # end
end
