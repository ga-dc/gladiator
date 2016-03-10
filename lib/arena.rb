class Arena
  attr_accessor :name, :gladiators

  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if(@gladiators.length < 2)
      @gladiators << gladiator
    end
  end

  def fight()
    if(gladiators.first == "Spear" && gladiators.second == "Trident")
      gladiators.first.delete
    end

  end

end
