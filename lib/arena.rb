# require 'pry'
require_relative 'gladiator'

class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators<<gladiator
    if @gladiators.count > 2
      puts "Only two players allowed"
      @gladiators.delete_at(2)
    end
  end

  def fight
    weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }
    if @gladiators.length == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        puts "You both chose a  #{@gladiators.last.weapon}. You're both dead. Game over"
        @gladiators.pop(2)
      elsif weapon_switch[@gladiators.first.weapon] == @gladiators.last.weapon
        puts "#{@gladiators.first.name} - YOU WIN"
        puts "#{@gladiators.last.name} -YOU'RE DEAD"
        @gladiators.delete_at(1)
      elsif weapon_switch[@gladiators.last.weapon] == @gladiators.first.weapon
        puts "#{@gladiators.last.name} - YOU WIN"
        puts "#{@gladiators.first.name} - YOU'RE DEAD"
        @gladiators.delete_at(0)
      end
    end
  end
end

# binding.pry
# puts "end"
