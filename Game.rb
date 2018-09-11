require_relative "Player.rb"
require_relative "TurnManager.rb"

class Game
  attr_reader :turn_manager

  def initialize
    @players = [Player.new(1), Player.new(2)]
    @turn_manager = TurnManager.new(@players)
  end

  def game_over?
    @players.any? {|p| p.dead?}
  end
end
