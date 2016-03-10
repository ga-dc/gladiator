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
    end
  end

end
