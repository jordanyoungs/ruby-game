require "pry"

require_relative "Question.rb"
require_relative "Player.rb"
require_relative "TurnManager.rb"

q1 = Question.new
p1 = Player.new(1)
p2 = Player.new(2)

tm = TurnManager.new([p1, p2])

binding.pry

puts "hello"
