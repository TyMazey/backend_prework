

class CheckerBoard
  attr_accessor :size
  def initialize(s)
    @size = s
  end

  def print_width(s)
    board_a = "X "
    board_b = " X"
    puts ("#{board_a}") * (size)
    puts ("#{board_b}") * (size)

    def print_height(s)
      (size - 1).times {
        print_width(size)
      }
    end
  end
end

def startup
  puts '-' * 50
  puts "Print a custom Checker Board! \n"
  puts "Please choose a number divisable by 2. \n"
  puts "Or EXIT to exit the program."
  puts "Press ENTER to continue..."
  puts '-' * 50
  input = gets.chomp.upcase
    if input == "EXIT"
      puts "----GOODBYE----"
    else
      user_promt
    end
end
def user_promt
  puts "What size would you like your board? \n"
  print "> "
  board_size = (gets.chomp.to_i) / 2

    if board_size == 0
      puts "A board muct be atleat 2 x 2!"
      sleep 2
      user_promt
    else
      puts '-' * 50
      checkers = CheckerBoard.new(board_size)
      checkers.print_width(board_size)
      checkers.print_height(board_size)
      puts '-' * 50
      sleep 1
      another_board
    end
end


def another_board
puts "Would you like to make another board? "
puts "Yes or No"
print "> "
another = gets.chomp.upcase
  if another == "YES"
    puts '-' * 50
    user_promt
  elsif another == "NO"
    puts "----GOODBYE----"
  else
    puts "#{another} is not a valid response."
    puts '-' * 50
    another_board
  end
end
startup
