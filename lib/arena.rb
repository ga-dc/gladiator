# require "pry"

class Gladiator

  attr_accessor :name, :weapon

  def initialize(name, weapon)

    @name = name
    @weapon = weapon

  end
end


class Arena


  attr_accessor :name , :gladiators



  def initialize(name)

    @name = name.capitalize
    @gladiators = []

  end

  def add_gladiator(gladiator)
    if gladiators.length < 2
      gladiators << gladiator
    end
    if gladiators.count == 2
    end
  end

  def fight()

    if gladiators.length < 2
      puts "Winner"
      return
      if gladiators[1].length > gladiators[0].length
        gladiators.delete_at(0)
      end

    end
puts "fight number one"
  end
end

fighters = Arena.new("roundone")
nyron = Gladiator.new("nyron" , "spear")
mike = Gladiator.new("nyron" , "spear")
fighters.add_gladiator(nyron)
fighters.add_gladiator(mike)
puts nyron
puts mike
puts fighters


# binding.pry

#
# arena = Arena.new("cool")
# arena.add_gladiator("cool")
