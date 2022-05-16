class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message unless @game_over
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    p @seq
    sleep(sequence_length)
    system("clear")
  end

  def require_sequence
    input = gets.chomp.split
    unless input == seq
      @game_over = true
    end
  end

  def add_random_color
    colors = ['red', 'green', 'yellow', 'blue']
    @seq << colors.sample
  end

  def round_success_message
    puts "Correct, starting next round..."
  end

  def game_over_message
    puts "Wrong! Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


if __FILE__ == $PROGRAM_NAME
  simon = Simon.new
  simon.play
end