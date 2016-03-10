require "pry"
require_relative "../lib/gladiator"

class Arena
  attr_accessor :name, :gladiators, :battle, :gladiator_names

  def initialize(name, gladiators = [])
    @name = name.capitalize
    @gladiators = gladiators
    @battle = []
    @gladiator_names = []
  end

  def add_gladiator(gladiator)
    gladiators << gladiator unless gladiators.length == 2
  end

  def fight
    unless gladiators.length < 2
      gladiators.each do |gladiator|
          battle << gladiator.weapon
          gladiator_names << gladiator.name
      end
      get_winner(battle)
    end
  end

  def get_winner(battle)
    if gladiator_names.include?("Maximus")
      gladiators.delete_if {|gladiator| gladiator.name != "Maximus"} if thumbs_up == "d"
    elsif battle.sort! == ["Spear", "Trident"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Spear"} if thumbs_up == "d"
    elsif battle.sort! == ["Club", "Spear"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Club"} if thumbs_up == "d"
    elsif battle.sort! == ["Club", "Trident"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Trident"} if thumbs_up == "d"
    elsif battle[0] == battle[1]
      gladiators.clear
    end
  end

  def remove(gladiator)
    gladiators.delete(gladiator)
  end

  def entertained?
    gladiators.each do |gladiator|
      if gladiator.name == "Maximus"
        return true
      else
        return false
      end
    end
  end

  def thumbs_up
    puts "Does the loser live or die? Type 'l' or 'd'"
    choice = gets.chomp
    return choice
  end
end

patrick = Gladiator.new("Patrick", "trident")
moran = Gladiator.new("Moran", "spear")
ga = Arena.new("ga", [patrick, moran])

binding.pry
puts "done"
