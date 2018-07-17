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

  def modif_status(new_status)
    @status = new_status
  end
end
