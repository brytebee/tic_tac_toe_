# Player class
class Player
  def game_name
    'Welcome to TIC TAC TOE game'
  end

  def sign_validate(sign)
    @player1 = 'x'
    @player2 = 'o'
    if [@player1, @player2].include?(sign)
      true
    else
      false
    end
  end

  def move_validate(move)
    move = move.to_i
    if move < 10 && move.positive?
      true
    else
      false
    end
  end

  def index_taken?(move, array)
    if array[move] == 'x' || array[move] == 'o'
      false
    else
      true
    end
  end

  # rubocop:disable Metrics/MethodLength
  def win(array, sign)
    arr = []
    state = false
    win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    if array.count(sign) > 2
      array.each_with_index do |value, index|
        arr.push(index) if value == sign
      end
    end
    arr = arr.sort
    win_array.each do |a|
      count = 0
      a.length.times { |i| count += 1 if arr.include? a[i] }
      if count == 3
        state = true
        break
      end
    end
    state
  end
  # rubocop:enable Metrics/MethodLength

  # draw if no wins just print draw
  def draw
    puts "It\'s a draw!"
    puts "Game Ended !! \u{1F61C}"
  end
end
