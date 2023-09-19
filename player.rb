class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  attr_accessor :lives, :name

  def deduct_lives
    self.lives -= 1
  end

end