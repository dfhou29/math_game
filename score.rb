class Score

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  attr_reader :player1, :player2

  def print_score
    if player1.lives == 0
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
      puts "Goodbye!"
    elsif player2.lives == 0
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    else
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end
  end
end