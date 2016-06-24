require "pry"
require_relative '../lib/gladiator'
require_relative '../lib/arena'

require './lib/arena'
require './lib/gladiator'

class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(gladiator)
    @gladiators << gladiator
    @gladiators = @gladiators.first(2)
    # if @gladiators.length < 2
    #   @gladiators << gladiator
    # end
  end
  def glad_weapons
  # elsif @gladiators.each do |glad|
  #   if glad.weapon ==
  the_weapons = {
      "Spear" => "Trident" #Spear loses to Trident
      "Club" => "Spear" #Club loses to Spear
      "Trident" => "Club" #Trident loses to Club
    }
    # set up a hash to do comparisons?

    @gladiators.each do |glad|
      if glad[the_weapons][:Spear]
      puts glad.weapon
    end
  end

  def fight
    if @gladiators.length == 0
      return "Add some gladiators!"
    elsif @gladiators.length == 1
      return "A gladiator can't fight oneself!"

    elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
      @gladiators.delete_at(0)
    elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
      @gladiators.delete_at(1)

    elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
      @gladiators.delete_at(0)
    elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
      @gladiators.delete_at(1)

    elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
      @gladiators.delete_at(0)
    elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
      @gladiators.delete_at(1)

    elsif @gladiators[0].weapon == @gladiators[1].weapon
      @gladiators = []
    end
  end
end

def fight # solution branch from GH repo
    weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }

    if @gladiators.count == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif weapon_switch[@gladiators.first.weapon] == @gladiators.last.weapon
        #switch the weapon of the first gladiator to the winning combo weapon
        #if that is equal to the second gladiator's weapon then gladiator 1 wins
        @gladiators.delete_at(1)
      else
        #if the weapon's are not equivalent after the switch
        #then gladiator 2 loses
        @gladiators.delete_at(0)
      end
    end

end

mega = Arena.new("megalopolis")
maximus = Gladiator.new("Maximus","Spear")
bilcephalon = Gladiator.new("Bilcephalon","Trident")
ephates = Gladiator.new("Ephates","Club")
cylodeus = Gladiator.new("Cylodeus","Club")
mega.add_gladiator(maximus)
mega.add_gladiator(ephates)

binding.pry
puts "end"
