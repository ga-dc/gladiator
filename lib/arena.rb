class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name
    @gladiators = []
  end

  def name
    @name.capitalize
  end

  def gladiators
    @gladiators
  end

  def add_gladiator(gladiator)
    if @gladiators.length != 2
      @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.length == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.clear
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Spear" ||
            @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club" ||
            @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Trident"
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    end
  end

  # def add_tenant(tenant)
  #   @renters << tenant if @renters.length < @num_beds
  # end

end
