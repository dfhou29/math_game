require './player'
require './question'
require './game'
require './score'

game = Game.new
while game.end? == false
  game.start_round
end