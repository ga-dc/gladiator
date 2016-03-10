# require 'pry'
require_relative 'gladiator.rb'
# fight when there is one gladiator does nothing
# fight when Club v Spear kills: club when fighting spear
# fight when Trident v Club kills: trident when fighting club
# fight when same Weapons kills: both if their weapons are the same


class Arena

  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    return if @gladiators.length < 2
    if @gladiators[0].weapon == @gladiators[1].weapon
      @gladiators = []
    elsif @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Spear'
        @gladiators.delete(@gladiators[1])
    elsif @gladiators[1].weapon == 'Trident' && @gladiators[0].weapon == 'Spear'
        @gladiators.delete(@gladiators[0])
    elsif @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Club'
        @gladiators.delete(@gladiators[1])
    elsif @gladiators[1].weapon == 'Spear' && @gladiators[0].weapon == 'Club'
        @gladiators.delete(@gladiators[0])
    elsif @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Trident'
      @gladiators.delete(@gladiators[1])
    elsif @gladiators[1].weapon == 'Club' && @gladiators[0].weapon == 'Trident'
      @gladiators.delete(@gladiators[0])
    end
  end

end


metro = Arena.new('metro')

# binding.pry
