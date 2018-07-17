# coding: utf-8

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    left_up = BoardCase.new
    left_up_middle = BoardCase.new
    left_up_right = BoardCase.new
    middle_left = BoardCase.new
    middle_middle = BoardCase.new
    left_up_right = BoardCase.new
    left_up = BoardCase.new
    left_up_middle = BoardCase.new
    left_up_right = BoardCase.new
  end

  def to_s
  #TO DO : afficher le plateau

  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end
