class Arena
  attr_accessor(:name, :gladiators)

  def initialize(name)
      @name = name.capitalize
      @gladiators = []
  end

  def add_gladiator(gladiator)
    return if @gladiators.length >= 2
    @gladiators << gladiator
  end

  def fight
    return if @gladiators.length <= 1
  end


end #end Arena
