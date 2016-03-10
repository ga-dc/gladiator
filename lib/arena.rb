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

  def remove_gladiator(gladiator)
    if @gladiators.detect { |g| g.name }
      @gladiators.delete(gladiator)
    end
  end

  def fight
    if @gladiators.count == 0
      puts "There are #{@gladiators.count} gladiators in the arena. There shall be no combat!"
    elsif @gladiators.count == 1
      puts "There is only #{@gladiators.count} gladiator in the arena. He can't fight himself!"
    else
      puts "#{@gladiators.first.name} fights #{@gladiators.last.name}. Morituri te salutamus!"
      if @gladiators.detect { |gladiator| gladiator.name == "Maximus" }
        puts "Maximus wins again! He always does . . ."
        @gladiators.delete_if { |gladiator| gladiator.name != "Maximus" }
      elsif @gladiators.first.weapon == @gladiators.last.weapon
        until @gladiators.count == 0
          @gladiators.pop
        end
      elsif (@gladiators.first.weapon == "Gladius") && (@gladiators.last.weapon == "Sica")
        @gladiators.pop
      elsif (@gladiators.first.weapon == "Sica") && (@gladiators.last.weapon == "Fuscina")
        @gladiators.pop
      elsif (@gladiators.first.weapon == "Fuscina") && (@gladiators.last.weapon == "Gladius")
        @gladiators.pop
      else
        @gladiators.shift
      end
      @gladiators
    end
  end

end
