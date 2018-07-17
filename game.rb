# coding: utf-8
require_relative "player"
class Game
  def initialize
    puts "Player one"
    @name_player_one = gets.chomp
    puts "Player two"
    @name_player_two = gets.chomp

    @player1 = Player.new(@name_player_one, @value_player_one)
    @player2 = Player.new(@name_player_two, @value_player_two)
    @board = Board.new
  end

  def   aff_rules
    puts"=================================="
    puts "=======> Comment jouer ? <======="
    sleep(3)
    puts "Voici les numéros qu'il faudra indiquer "
    puts "pour placer vos pions :"
    sleep(3)
    puts "  1 | 2 | 3 "
    puts "-------------"
    puts "  4 | 5 | 6 "
    puts "-------------"
    puts "  7 | 8 | 9 "
    sleep(3)
    puts "====================================="
    puts "     Ready ??     "
    puts "====================================="
    sleep(2)
    puts "3"
    sleep(2)
    puts "2"
    sleep(2)
    puts "1"
    sleep(2)
    puts "go"
  end

  def go
    # TO DO : lance la partie
    while true
     aff_rules
     @board.print_board
     puts "C'est à " + @player1.name + "\n"
     puts "Enter a choice (between 1-9)\n"
     @pos = gets.chomp.to_i

    end
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end
