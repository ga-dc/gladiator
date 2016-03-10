class Arena

  #attr_accesor to have access to the read and write properties
  attr_accessor :name
  attr_accessor :gladiators

  #initialize Arena
  def initialize(name)

    #makes the 1st letter of the word capital
    @name = name.capitalize

    #establishing gladiators array
    @gladiators = []
  end

  def add_gladiator(gladiator)

    #pushes the gladiator into the gladiators array
    @gladiators << gladiator
  end

end
