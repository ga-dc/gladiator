# require 'pry'
require_relative 'gladiator'

class Arena
  attr_accessor :name, :gladiators
  def initialize name, gladiators = []
    @name = name.capitalize
    @gladiators = gladiators
  end
  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end
  def fight
    if @gladiators.length < 2
    else getWinner
    end
  end
  def getWinner
    if gladiators[0].weapon == 'Trident' && gladiators[1].weapon == 'Spear'
      gladiators.pop
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == 'Spear' && gladiators[1].weapon == 'Trident'
      gladiators.shift
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == 'Spear' && gladiators[1].weapon == 'Club'
      gladiators.pop
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == 'Club' && gladiators[1].weapon == 'Spear'
      gladiators.shift
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == 'Club' && gladiators[1].weapon == 'Trident'
      gladiators.pop
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == 'Trident' && gladiators[1].weapon == 'Club'
      gladiators.shift
      puts "#{gladiators[0].name} wins!"
    elsif gladiators[0].weapon == gladiators[1].weapon
      "Same weapon. #{gladiators[0].name} & #{gladiators[1].name} both die."
      @gladiators = []
    end
  end
end
arena = Arena.new("Metropolis")

max = Gladiator.new("Max","Trident")
ren = Gladiator.new("Ren","Spear")
arena.add_gladiator(max)
arena.add_gladiator(ren)
# binding.pry
