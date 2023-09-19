class Game
  def initialize
    @player1 = add_player(1)
    @player2 = add_player(2)
    @current_asker = @player1
    @current_player = @player2
  end

  attr_accessor :player1, :player2, :current_player, :current_asker

  def add_player(id)
    print "Enter player #{id}'s name: "
    Player.new($stdin.gets.chomp)
  end

  def switch_player
    if current_player == player1
      self.current_player = player2
      self.current_asker = player1
    else
      self.current_player = player1
      self.current_asker = player2
    end
  end

  def start_round
    question = Question.new(current_player)
    print "#{current_asker.name}: #{question.generate_question} "

    answer = $stdin.gets.chomp
    question.print_result(answer, current_player)

    score = Score.new(player1, player2)
    score.print_score
  end

end