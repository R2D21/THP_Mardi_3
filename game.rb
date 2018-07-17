# coding: utf-8
require_relative "player"

class Game
  def initialize
    puts "Player one"
    @name_player_one = gets.chomp
    puts "Player two"
    @name_player_two = gets.chomp

    @player1 = Player.new(@name_player_one, "O")
    @player2 = Player.new(@name_player_two, "X")
    @board_game = Board.new
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
    aff_rules
    while true
      @board_game.print_board
      player_back = @player2.name
       if player_back.eql? @player2.name
         puts "C'est à " + @player1.name + "\n"
         puts "Enter a choice (between 1-9)\n"
         @pos = gets.chomp.to_i
         update_board(@pos, @player1.value)
         player_back = @player1.name
       elsif player_back.eql? @player1.name
         puts "C'est à " + @player2.name + "\n"
         puts "Enter a choice (between 1-9)\n"
         @pos = gets.chomp.to_i
         update_board(@pos, @player1.value)
         player_back = @player2.name
       else
         puts "An error occured.\nplayer one or player missing"
       end
    end
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end
