require "./questions"
require "./player"
require "./game"

def main
  game = Game.new(Player.new("1"), Player.new("2"),Questions.new() )
  game.start
  puts "Good bye!"
end

main()