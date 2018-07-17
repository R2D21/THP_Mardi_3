# coding: utf-8

class Board

  def initialize

#we create instances for all of the 9 cases inside the board

    left_up = BoardCase.new
    up_center = BoardCase.new
    up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_center = BoardCase.new
    middle_right = BoardCase.new
    down_left = BoardCase.new
    down_middle = BoardCase.new
    down_right = BoardCase.new

#we put all the cases inside of an array in order to later know the position of each of the cases
    @board = [left_up, up_center, up_right,
              middle_left, middle_center, middle_right,
              down_left,down_middle, down_right]
  end

#Method that prints the board game
  def print_board
#We display the values of each of the cases according to their index, taking the value 'boardcase.new'
#the .status variable then defines if each of the cases are BLANK or either outputs an X or an O

    puts "          " + @board[0].status + " |" + @board[1].status + " |" + @board[2].status
    puts "          " + @board[3].status + " |" + @board[4].status + " |" + @board[5].status
    puts "        ---------"
    puts "          " + @board[6].status + " |" + @board[7].status + " |" + @board[8].status
  end

#We create a method that checks out if the player wins according the differents alignements
  def win
    if @array[0] == @array[1] && @array[0] == @array[2] #top horizontal line
      return true
    elsif  @array[3] == @array[4] &&  @array[3] == @array[5] #middle horizontal line
      return true
    elsif  @array[6] == @array[7] &&  @array[6] == @array[8] #bottom horizontal line
      return true
    elsif  @array[0] == @array[3] &&  @array[0] == @array[6] #top vertical line
      return true
    elsif  @array[1] == @array[4] &&  @array[1] == @array[7] #middle vertical line
      return true
    elsif  @array[2] == @array[5] &&  @array[2] == @array[8] #bottom vertical line
      return true
    elsif  @array[0] == @array[4] &&  @array[0] == @array[8] #diagonal line
      return true
    elsif  @array[2] == @array[4] &&  @array[2] == @array[6] #diagonal line
      return true
    end
  end
end
