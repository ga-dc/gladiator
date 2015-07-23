class Arena
  attr_accessor :name
  def initialize(initial_name)
    @name = initial_name.slice(0,1).capitalize + initial_name.slice(1..-1)
    @gladiators = Array.new
  end

  def gladiators
    return @gladiators
  end
  def add_gladiator(new_gladiator)
    if @gladiators.count < 2
      @gladiators.push(new_gladiator)
    else
      puts "Already two gladiators!"
    end
  end
  def fight
    if @gladiators.count ==2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop
        @gladiators.pop
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Spear"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Trident"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.delete_at(0)
      else
        puts "The Gladiators are rebelling!!!"
      end
    else
      puts "We need two gladiators for a fight!"
    end
  end
end
