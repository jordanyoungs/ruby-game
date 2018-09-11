class Question
  def initialize
    @x = rand(20) + 1
    @y = rand(20) + 1
  end

  def to_s
    "What does #{@x} + #{@y} equal?"
  end

  def answer?(answer)
    answer == @x + @y
  end
end
