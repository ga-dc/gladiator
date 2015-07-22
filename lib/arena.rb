require "pry"
class Arena
  attr_accessor :name, :weapon, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(person)
    @gladiators.push(person) if @gladiators.length < 2
  end
  def fight
    if @gladiators.length <= 1
      return false
    end
    if @gladiators.first.weapon.downcase == @gladiators.last.weapon.downcase
      @gladiators.clear
    elsif @gladiators.first.weapon.downcase == "spear" && @gladiators.last.weapon.downcase == "club"
          @gladiators.first.weapon.downcase == "trident" && @gladiators.last.weapon.downcase == "spear"
          @gladiators.first.weapon.downcase == "club" && @gladiators.last.weapon.downcase == "trident"
      @gladiators.delete_at(1)
    else
      @gladiators.delete_at(0)
    end
 end
end
