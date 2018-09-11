class Player
  attr_reader :id
  MAX_LIVES = 3

  def initialize(id)
    @id = id
    @lives = MAX_LIVES
  end

  def to_s
    "P#{@id}: #{@lives}/#{MAX_LIVES}"
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    @lives <= 0
  end
end
