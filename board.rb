# coding: utf-8
require_relative "board_case"

class Board

  def initialize

#we create instances for all of the 9 cases of the board

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

    puts ""
    puts "                  " + @board[0].status + " | " + @board[1].status + " | " +  @board[2].status
    puts "                 -------------"
    puts "                  " + @board[3].status + " | " + @board[4].status + " | " +  @board[5].status
    puts "                 -------------"
    puts "                  " + @board[6].status + " | " + @board[7].status + " | " +  @board[8].status
    puts ""
  end

  def   update_board(pos, value)
    if (@board[pos].status == "O" or @board[pos].status == "X")
      puts "please try again"
      return (false)
    else
      @board[pos].status = value;
      return (true)
    end
  end
  #We create a method that checks out if the player wins
  def victory
    victory_lines || victory_columns || victory_diagonal
  end
  def victory_lines
    victory_lines = [[0,1,2],[3,4,5],[6,7,8]]
    victory_lines.each do |line|
      line_str = ''
      line.each { |x| line_str << @board[x].status }
      return true if ['XXX', 'OOO'].include? line_str
    end
    false
  end

  def is_full?
    @board.each do |boardcase|
      return false if boardcase.to_s == ' '
    end
    true
    puts" Game over"
  end

  def victory_columns
    victory_columns = [[0,3,6],[1,4,7],[2,5,8]]
    victory_columns.each do |column|
      column_str = ''
      column.each { |x| column_str << @board[x].status }
      return true if ['XXX', 'OOO'].include? column_str
    end
    false
  end

  def victory_diagonal
    victory_diagonal = [[0,4,8],[2,4,6]]
    victory_diagonal.each do |diagonal|
      diagonal_str = ''
      diagonal.each { |x| diagonal_str << @board[x].status }
      return true if ['XXX', 'OOO'].include? diagonal_str
    end
    false
  end
  def win
    puts @board[0].status +" "+ @board[1].status + "" + @board[2].status
    if @board[0].status == @board[1].status && @board[0].status == @board[2].status
      return true
    elsif  @board[3].status == @board[4].status &&  @board[3].status == @board[5].status
      return true
    elsif  @board[6].status == @board[7].status &&  @board[6].status == @board[8].status
      return true
    elsif  @board[0].status == @board[3].status &&  @board[0].status == @board[6].status
      return true
    elsif  @board[1].status == @board[4].status &&  @board[1].status == @board[7].status
      return true
    elsif  @board[2].status == @board[5].status &&  @board[2].status == @board[8].status
      return true
    elsif  @board[0].status == @board[4].status &&  @board[0].status == @board[8].status
      return true
    elsif  @board[2].status == @board[4].status &&  @board[2].status == @board[6].status
      return true
    end
    return false
  end
end
