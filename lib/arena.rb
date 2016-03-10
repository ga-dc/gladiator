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

  #adding gladiators to the arena
  def add_gladiator(gladiator)

    #no more gladiators can be added to array if the length is longer than 2
    if @gladiators.length < 2

      # pushes the gladiator into the gladiators array
      @gladiators << gladiator
    end
  end

  #making the gladiators fight
  def fight

    #do nothing
    if @gladiators.length == 0 || @gladiators.length == 1

    #do nothing
    # elsif @gladiators.length == 1

      #fight!
    elsif @gladiators.length ==2

    end
  end

end
