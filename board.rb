# coding: utf-8

class Board

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    left_up = BoardCase.new
    up_center = BoardCase.new
    up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_center = BoardCase.new
    middle_right = BoardCase.new
    down_left = BoardCase.new
    down_middle = BoardCase.new
    down_right = BoardCase.new

    @board = [left_up, up_center, up_right,
              middle_left, middle_center, middle_right,
              down_left,down_middle, down_right]
  end
  def print_board
    #TO DO : doit renvoyer la valeur au format string
    puts "          " + @board[0].status + " |" + @board[1].status + " |" + @board[2].status
    puts "        ---------"
    puts "          " + @board[3].status + " |" + @board[4].status + " |" + @board[5].status
    puts "        ---------"
    puts "          " + @board[6].status + " |" + @board[7].status + " |" + @board[8].status
  end
  def is_win()
    if @board[0] == @board[1] && @board[0] == @board[2]
      return true
    elsif @board[3] == @board[4] && @board[3] == @board[5]
      return true
    elsif @board[6] == @board[7] && @board[6] == @board[8]
      return true
  end
end
