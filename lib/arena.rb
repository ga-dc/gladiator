# require_relative "gladiator"
# require "pry"

class Arena
  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
      @gladiators.sort_by! do |gladiator|
        gladiator.weapon
      end
      @gladiators
    else
      puts "There are 2 gladiators in the arena already."
    end
  end

  def remove_gladiator gladiator
      @gladiators.delete_if {|i| i.name == gladiator}
      @gladiators
  end

  def entertained?
    @gladiators.each do |gladiator|
      if gladiator.name.index("Maximus") != nil
        puts "The crowd is entertained."
      elsif @gladiators[0].name != "Maximus" && @gladiators[1].name != "Maximus"
        puts "The crowd is NOT entertained."
        break
      end
    end
  end

  def fight
    if @gladiators.length <= 1
      puts "The arena needs more gladiators!"
    else
      @gladiators.each do |gladiator|
        if gladiator.name == "Maximus"
          puts "Maximus is always the winner."
          @gladiators.delete_if {|gladiator| gladiator.name != "Maximus"}
        elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
          @gladiators.shift
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
          @gladiators.shift
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
          @gladiators.pop
          puts @gladiators[0].name + " is the winner!"
        elsif @gladiators[0].weapon == @gladiators[1].weapon
          @gladiators.pop(2)
          puts "Both gladiators have been killed."
        end
      end
    end
  end

end

adrian = Gladiator.new("adrian", "club")
robin = Gladiator.new("robin", "spear")
maximus = Gladiator.new("maximus", "spear")

dupont = Arena.new("dupont")
dupont.add_gladiator adrian
dupont.add_gladiator robin

# binding.pry
