class Game
  attr_accessor :current_player

  def initialize(p2, p1)
    @current_player = p2
    @answer_player  = p1
  end

  def questioner_input
    number1 = rand(1..10)
    number2 = rand(1..10)
   
    mathQ = Question.new(@answer_player)
    mathQ.question(number1, number2)
  end 

end