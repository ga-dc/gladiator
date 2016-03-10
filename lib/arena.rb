class Arena
  attr_accessor :name, :gladiators

  def initialize(initial_name)
    @name = initial_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      gladiator = gladiator
      @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.empty? == true
    end
    if @gladiators.count == 1
    end
    if @gladiators.count == 2
      if gladiator.weapon.include?("spear") && @weapon.include?("trident")
        @gladiators.delete(gladiator.weapon.include?("spear"))
      end
    end
  end

end
