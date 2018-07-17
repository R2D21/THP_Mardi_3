# coding: utf-8
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :status, :nbre_case
  @@instances = 0
  def initialize(status ="")
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @status = status
    @nbre_case = nbre_case
    @@instances +=1
  end

  def to_s
    #TO DO : doit renvoyer la valeur au format string
  end
end
