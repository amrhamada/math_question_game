class Game 
  def initialize(player1, player2, question)
    @player1 = player1
    @player2 = player2
    @turn = true
    @question = question
  end

  def start
    while @player1.lives > 0 and @player2.lives > 0
      puts "----- NEW TURN ------"
      player = @turn ? @player1 :  @player2
      puts  "#{player.name}: "+ @question.get_question
      answer = gets.chomp.to_i
      result = @question.check_answer(answer)    
      if result 
        @turn = !@turn 
        puts "#{player.name}: Yes! You are Correct"
      else 
        @turn = !@turn 
        puts "#{player.name}:  Seriously? No!"
        player.lose_life
      end
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    puts "----- GAME OVER -----"
    if @player1.lives > 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    else 
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    end 

  end
end 