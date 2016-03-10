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
      if (first_gladiator.weapon == "Gladius") && (second_gladiator.weapon == "Sica")
        @gladiators.pop
      elsif (first_gladiator.weapon == "Sica") && (second_gladiator.weapon == "Fuscina")
        @gladiators.pop
      elsif (first_gladiator.weapon == "Fuscina") && (second_gladiator.weapon == "Gladius")
        @gladiators.pop
      elsif (second_gladiator.weapon == "Gladius") && (first_gladiator.weapon == "Sica")
        @gladiators.shift
      elsif (second_gladiator.weapon == "Sica") && (first_gladiator.weapon == "Fuscina")
        @gladiators.shift
      elsif (second_gladiator.weapon == "Fuscina") && (first_gladiator.weapon == "Gladius")
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
