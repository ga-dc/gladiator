class Gladiator
  attr_accessor :name, :weapon

  def initialize name, weapon
    if name == 'Maximus'
      @name = name
      @weapon = 'Sword'
    else
      @name = name
      @weapon = weapon
    end
  end

end
