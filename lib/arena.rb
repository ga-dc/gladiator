class Arena

  attr_accessor :name, :gladiators

  def initialize(arena_name)
    @name = arena_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.length = 2
      case @gladiators[0].weapon
      when "Trident"
        puts "Lol trident"
      when "Spear"
      	puts "Lol spear"
      when "Club"
      	puts "Lol club"
      end
    end
  end
end
