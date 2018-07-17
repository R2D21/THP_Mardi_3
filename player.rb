# coding: utf-8
class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name, :value
  def initialize(name, value)
    @name = name

    @value = value
  end
end
