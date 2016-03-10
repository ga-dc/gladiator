
require_relative 'gladiator'
class Arena
  attr_accessor :name :gladiators :fight

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  arena = Arena.new
  arena.add_gladiator("Antony")
  arena.add_gladitor("Brutus")

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    else
    if @gladiators.length > 2
      remove_gladiators
      puts "Two gladiators are already fighting. Kill one!"
        @gladiators.pop
    end

  def fight
    if @gladiators == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.clear
  #my initial thought was to place all of my weapons into an array, and then assign them their appropriate index number (so that I can pull the appropriate combination of weapons to fight each other...but I wasn't sure how to do that :/)
      elseif @gladiators.first.weapon == "Trident" &&
      @gladiators.last.weapon == "Spear" ||
      @gladiators.first.weapon == "Trident" &&
      @gladiators.last.weapon == "Club" ||
      @gladiators.first.weapon == "Trident" &&
      @gladiators.last.weapon == "Sword" ||
      @gladiators.first.weapon == "Spear" &&
      @gladiators.last.weapon == "Club" ||
      @gladiators.first.weapon == "Spear" &&
      @gladiators.last.weapon == "Sword" ||
      @gladiators.first.weapon == "Sword" &&
      @gladiators.last.weapon == "Club"
      @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    end
  end
