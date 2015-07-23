class Arena

  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(name)
    if @gladiators.count <2
      @gladiators.push(name)
    end

    def fight
      if@gladiators.count <2
        return
      end
      if @gladiators[0].weapon == @gladiators[1].weaponreturn @gladistors =[]
      end

      if @gladiators[0].weapon =="Spear" && @gladiators[1].weapon == "Trident"
        @gladiators.shift
      elsif @gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club"
        @gladiators.pop
      elsif @gladiators[0].weapon == "Trident" && gladiators[1].weapon == "Club"
        @gladiators.shift
      end


end


end
