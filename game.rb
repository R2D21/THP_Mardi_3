# coding: utf-8
require_relative "player"
require_relative "board"

class Game
  def initialize
    puts"================================================================="
    puts " Welcome to the best Ruby TIC-TAC-TOE game of the whole universe"
    sleep(1)
    puts "                          And more ...                          "
    puts"================================================================="
    puts "Now Player one enter your name"
    @name_player_one = gets.chomp
    puts "Now Player tow enter your name"
    @name_player_two = gets.chomp

    @player1 = Player.new(@name_player_one, "O")
    @player2 = Player.new(@name_player_two, "X")
    @board_game = Board.new
  end

  def   aff_rules
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

  def play(string)
    puts string + " it's your turn !\n"
    puts "Enter a choice (between 1-9)\n"
    @pos = gets.chomp.to_i
    @pos -= 1
  end

  def go
    # TO DO : lance la partie
    # aff_rules
    player_back = @player2.name
    begin
      while @board_game.victory == false do
        @board_game.print_board
        if player_back.eql? @player2.name
          puts @player1.name + " it's your turn !\n"
          puts "Enter a choice (between 1-9)\n"
          @pos = gets.chomp.to_i
          @pos -= 1
          while @board_game.update_board(@pos, @player1.value.to_s) != true
            play(@player1.status)
          end
         player_back = @player1.name
        elsif player_back.eql? @player1.name
          puts @player2.name + " it's your turn !\n"
          puts "Enter a choice (between 1-9)\n"
          @pos = gets.chomp.to_i
          @pos -= 1
          while @board_game.update_board(@pos, @player2.value.to_s) != true
            play(@player2.status)
          end
          player_back = @player2.name
        else
          puts "An error occured.\nplayer one or player missing"
        end
      end
    rescue  => e
      puts "Rescued Please enter a number between 1 and 9"
      retry
    end
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end
