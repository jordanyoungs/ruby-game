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

  def summary
    "#{@players[0]} vs #{@players[1]}"
  end

  def find_winner
    @players.select {|p| !p.dead?}.first
  end

  def run
    puts "WELCOME TO MY MATH DUEL GAME!"

    while !game_over?
      turn = @turn_manager.next_turn

      puts
      puts "Player #{turn.player.id}: #{turn.question}"
      print ">"
      input = gets.chomp.to_i
      if turn.question.answer?(input)
        puts "Player #{turn.player.id}: Correct! Good job!"
      else
        puts "Player #{turn.player.id}: Wrong! You lose a life!"
        turn.player.lose_life
      end

      puts summary
    end

    winner = find_winner
    puts "Congratulations Player #{winner.id}, you won!"

    puts "THANKS FOR PLAYING MY GAME! BYE!"
  end
end
