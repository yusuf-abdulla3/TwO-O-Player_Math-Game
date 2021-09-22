class Question

  def initialize(player)
    @current_player = player
  end

  def question num1, num2
    puts "#{@current_player.name}: what does #{num1} plus #{num2} equal?"

    answer = gets.chomp.to_i
  
    if answer == num1 + num2 
      puts "Well done #{@current_player.name}, that is correct!"

    else
      puts "Seriously #{@current_player.name}? That is incorrect!"
      @current_player.subtract_life
    end

  end

end