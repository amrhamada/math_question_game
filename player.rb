class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name ="Player #{name}"
    @lives = 3
  end

  def reset_lives 
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end