require_relative "../lib/gladiator"

class Arena
  attr_reader :name
  attr_reader :gladiators

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      self.gladiators << gladiator
    end
  end

  def fight
    if @gladiators.count == 0
      puts "There are #{@gladiators.count} gladiators in the arena. There shall be no combat!"
    elsif @gladiators.count == 1
      puts "There is only #{@gladiators.count} gladiator in the arena. He can't fight himself!"
    else
      first_gladiator = @gladiators[0]
      second_gladiator = @gladiators[1]
      puts "#{first_gladiator.name} fights #{second_gladiator.name}. Morituri te salutamus!"
      if (first_gladiator.weapon == "Spear") && (second_gladiator.weapon == "Club")
        @gladiators.pop
      elsif (first_gladiator.weapon == "Club") && (second_gladiator.weapon == "Trident")
        @gladiators.pop
      elsif (first_gladiator.weapon == "Trident") && (second_gladiator.weapon == "Spear")
        @gladiators.pop
      elsif (second_gladiator.weapon == "Spear") && (first_gladiator.weapon == "Club")
        @gladiators.shift
      elsif (second_gladiator.weapon == "Club") && (first_gladiator.weapon == "Trident")
        @gladiators.shift
      elsif (second_gladiator.weapon == "Trident") && (first_gladiator.weapon == "Spear")
        @gladiators.shift
      elsif first_gladiator.weapon == second_gladiator.weapon
        until @gladiators.count == 0
          @gladiators.pop
        end
      end
      @gladiators
    end
  end

end
