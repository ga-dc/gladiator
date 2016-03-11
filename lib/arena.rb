require "pry"
class Arena

  attr_accessor(:name, :gladiators)
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(warrior)
    if @gladiators.length < 2
      @gladiators << warrior
    else
      puts "We've got enough fighters in the Arena"
    end
  end

  def fight
    if @gladiators.length == 2
      first_glad = @gladiators.first.weapon
      last_glad = @gladiators.last.weapon
      if @gladiators.last == "Maximus"
        @gladiators.pop
      else
        @gladiators.push
      end
      if first_glad == last_glad
        @gladiators.pop(2)
      elsif first_glad == "Spear" && last_glad == "Trident"
        @gladiators.shift
      elsif first_glad == "Club" && last_glad == "Spear"
        @gladiators.shift
      elsif first_glad == "Trident" && last_glad == "Club"
        @gladiators.shift
      else
        @gladiators.pop
      end
    else
      puts "not enough fighters"
    end
  end
end
