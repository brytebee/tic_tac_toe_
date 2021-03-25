#  settings class
class Settings
  # rubocop:disable Style/StringLiterals
  def draw_board(board)
    @show_board = board
    puts "||-----------||"
    puts "|| #{@show_board[0]} | #{@show_board[1]} | #{@show_board[2]} ||"
    puts "||-----------||"
    puts "|| #{@show_board[3]} | #{@show_board[4]} | #{@show_board[5]} ||"
    puts "||-----------||"
    puts "|| #{@show_board[6]} | #{@show_board[7]} | #{@show_board[8]} ||"
    puts "||-----------||"
  end
  # rubocop:enable Style/StringLiterals

  def switch_user(player_symbol)
    if player_symbol == 'o'
      'x'
    else
      'o'
    end
  end
end
