class Arena

  attr_accessor :name, :gladiators, :fight, :weapon

  def initialize name
    @name = name.capitalize
    @gladiators = []
    @fight = []
    @weapon = []
    @entertained = false
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators.push(gladiator)
      @weapon.push(gladiator.weapon)
    end
  end

  def fight
    if @gladiators.count == 2
      if @gladiators[0] == 'maximus'
        @gladiators.delete(@gladiators[1])
      elsif  @gladiators[1] == 'maximus'
        @gladiators.delete(@gladiators[0])
      elsif  @weapon == (["Spear","Trident"] or ["Trident", "Spear"])
         @gladiators.delete(@gladiators[@weapon.index("Spear")])
      elsif @weapon == (["Spear","Club"] or ["Club", "Spear"])
        @gladiators.delete(@gladiators[@weapon.index("Club")])
      elsif @weapon == (["Trident","Club"] or ["Club", "Trident"])
        @gladiators.delete(@gladiators[@weapon.index("Trident")])
      elsif @weapon[0] == @weapon[1]
        @gladiators = []
      end
    end
  end

  def clear_gladiators name
      @gladiators.delete(@gladiators[@gladiators.index(name)])
  end
  
end
