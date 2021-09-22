require_relative './player'
require_relative './game'
require_relative './question'

player1 = Player.new
player2 = Player.new 

while player1.alive? && player2.alive? do

game1 = Game.new(player2, player1)
game1.questioner_input
puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

game2 = Game.new(player1, player2)
game2.questioner_input
puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

end


if player1.lives == 0 && player2.lives == 0
  puts "Draw"
elsif player1.lives == 0 && player2.lives > 0
  puts "Player 2 wins"
elsif player1.lives > 0 && player2.lives == 0 
  puts "Player 1 wins"
end