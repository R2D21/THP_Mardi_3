# coding: utf-8

class Board

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    left_up = BoardCase.new
    left_up_middle = BoardCase.new
    left_up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_middle = BoardCase.new
    middle_right = BoardCase.new
    down_up = BoardCase.new
    down_middle = BoardCase.new
    down_right = BoardCase.new

 @board = [left_up, left_middle, left_right,
   middle_left, middle_middle, middle_right,
    down_up,down_middle, down_right]


end
