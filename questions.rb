class Questions
  # def initialize(player_name)
  #   @player_name = player_name
  # end

  def get_numbers
    @first = rand(1..20)
    @second = rand(1..20)
  end 

  def get_question 
    self.get_numbers
    "What does #{@first} plus #{@second} equal?"

  end

  def check_answer(answer)
    if @first + @second == answer
      true
      # "#{@player_name}: Yes! You are Correct"
    else 
      false
      # "#{@player_name}: Seriously? No!"
    end
  end

end