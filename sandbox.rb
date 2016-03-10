#require "pry"

class Arena# < ActiveRecord::Base

  #has_many :gladiator

  attr_accessor :name, :gladiators, :weapon

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
@gladiators[0].weapon 
  #
  # def add_gladiator(gladiator)
  #   # array should hold no more than 2 gladiators at a time
  #     @gladiators << gladiator
  #     puts "adding gladiator #{gladiator}"
  #   end
  # end
  #
  # def fight
  #   if @gladiators.length = 2
  #     #if @gladiators
  #   end
  #   #fight!
  #   # have to assign winning combinations based on weapons, not values?
  #   #end
  #
  #   # weapons: set them up to have value based on place in weapons array
  #
  #   # fight
  #
  # end

end

  megalopolis = Arena.new("Megalopolis")
  maximus = Gladiator.new("Maximus", "Trident")
  tiffany = Gladiator.new("Belle", "Spear")
  gort = Gladiator.new("Gort", "Club")


  # binding.pry
  # puts "Done."
