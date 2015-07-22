class Arena

  attr_accessor :arena_name, :gladiators

  def initialize(name)
    @arena_name = name
    @gladiators = []
  end

  def name
    @arena_name = @arena_name.split.map(&:capitalize).join(' ')
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
     if @gladiators.length < 2
       return
     end
     if @gladiators[0].weapon == @gladiators[1].weapon
       return @gladiators = []
     end

     if @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident"
       @gladiators.shift
     elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
      @gladiators.pop
     elsif @gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club"
      @gladiators.shift
    end

  end

end


# arena = Arena.new("megapolis")
