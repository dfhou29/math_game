class Turn

  def initialize(current_player)
    @current_player = current_player
  end

  attr_accessor :current_player

  def print_round
    puts "#{self.current_player.name}: #{question}"
  end

end