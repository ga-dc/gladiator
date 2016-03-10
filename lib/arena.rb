class Arena
  attr_accessor :name, :gladiators

  def initialize (name)

    @name = name.capitalize
    @gladiators = []


  end

  def add_gladiator (name)
    if @gladiators.length < 2
     @gladiators << name
    else
      "You have 2 Gladiators!"
    end
  end

  def fight
    if gladiator =0 then action in arena = nil
    if @gladiators.count = 2
      return nil
    end

    if spear vs trident return = "spears win"
    if gladiator1 = gladiators.first wins
    else gladiator2 = gladiators.last lose
    #
    # return gladiator1.weapon.shift
    gladiator1 = @gladiators.first.weapon
    gladiator2 = @gladiators.last.weapon

    if gladiator1 == "Trident" && gladiator2 == "Spear"
      @gladiators.pop
    else
      @gladiators.shift
    end
  end
end
