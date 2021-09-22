class Player

  @@number_of_players = 0
  attr_reader :name, :lives

  def initialize 
    @@number_of_players += 1
    @name = "Player #{@@number_of_players}"
    @lives = 3
  end


  def subtract_life
    @lives -= 1
  end
  
  def alive?
    @lives > 0
  end
end