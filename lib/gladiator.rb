class Gladiator
  attr_reader :name
  attr_reader :weapon

  def initialize (name, weapon)
    @name = name.capitalize
    @weapon = weapon
    #weapons should be "fuscina (trident), gladius (sword), or sica (Thracian knife)"
    #gladiator types are "Retiarius, Murmillo, and Thraex"
  end

end
