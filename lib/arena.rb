class Arena

  #attr_accesor to have access to the read and write properties
  attr_accessor :name

  #initialize Arena
  def initialize(name)
    @name = name.capitalize
  end

  #establishing gladiators array
  def gladiators
    gladiators = []
  end

end
