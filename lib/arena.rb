require_relative "gladiator.rb"

class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators << gladiator
      puts "#{gladiator.name} is in the arena"
    end
  end

  def fight
    if @gladiators.count == 2
      puts "#{@gladiators[0].name} and his #{@gladiators[0].weapon} is fighting #{@gladiators[1].name} and his #{@gladiators[1].weapon}"
      if @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear"
        @gladiators.slice!(1)
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
        @gladiators.slice!(0)
      elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
        @gladiators.slice!(0)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"
        @gladiators.slice!(1)
      elsif @gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Spear"
        @gladiators.slice!(0)
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.slice!(1)
      elsif @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.slice!(1)
        @gladiators.slice!(0)
      end # end if statement
      # puts "#{@gladiators[0].name} is the winner"
    end # end if count ==2
  end #end fight method
end # end class Arena
