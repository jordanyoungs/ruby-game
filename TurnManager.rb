require_relative "Question.rb"

class TurnManager
  def initialize(players)
    @players = players.dup.shuffle
  end

  def next_turn
    current_player = @players.first
    @players.rotate!
    Turn.new(current_player, Question.new)
  end
end

class Turn
  attr_reader :player, :question

  def initialize(player, question)
    @player = player
    @question = question
  end
end
