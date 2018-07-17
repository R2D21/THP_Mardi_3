# coding: utf-8

class Board

  def initialize
    
#we create instances for all of the 9 cases

    left_up = BoardCase.new
    up_center = BoardCase.new
    up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_center = BoardCase.new
    middle_right = BoardCase.new
    down_left = BoardCase.new
    down_middle = BoardCase.new
    down_right = BoardCase.new
    
#we put all the cases inside of an array in order later to know the position of each of the cases
    @board = [left_up, up_center, up_right,
              middle_left, middle_center, middle_right,
              down_left,down_middle, down_right]
  end
  def print_board
#Method that prints the board game  
#We display the values of each of the cases according to their index, taking the value 'boardcase.new'

 puts "          " + @board[0].status + " |" + @board[1].status + " |" + @board[2].status
    puts "        ---------"
    puts "          " + @board[3].status + " |" + @board[4].status + " |" + @board[5].status
    puts "        ---------"
    puts "          " + @board[6].status + " |" + @board[7].status + " |" + @board[8].status
  end
  
  #We create a method that checks out if the player wins
  def is_win()
    if @board[0] == @board[1] && @board[0] == @board[2] #top horizontal line 
      return true
    elsif @board[3] == @board[4] && @board[3] == @board[5] #middle horizontal line
      return true
    elsif @board[6] == @board[7] && @board[6] == @board[8] #bottom horizontal line
      return true
  end
end
