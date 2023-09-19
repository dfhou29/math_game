class Question
  def initialize(player)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = num1 + num2
  end

  attr_reader :num1, :num2, :result

  def generate_question
    "What does #{num1} plus #{num2} equal?"
  end

  def print_result(answer, player)
    if self.result == answer.to_i
      puts "Yes! You are correct!"
    else
      player.deduct_lives
      puts "Seriously? No!"
    end
  end

end