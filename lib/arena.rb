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
  end #initialize end

  #adding gladiators to the arena
  def add_gladiator(gladiator)

    #no more gladiators can be added to array if the length is longer than 2
    if @gladiators.length < 2

      # pushes the gladiator into the gladiators array
      @gladiators << gladiator
    end #if end
  end #add gladiator end

  #making the gladiators fight
  def fight

    #do nothing
    if @gladiators.length == 0 || @gladiators.length == 1

      #fight!
    elsif @gladiators.length ==2

      #making a case statement
      case
        #trident beats spear
      when '@gladiators[0].weapon == "Spear"', '@gladiators[1].weapon == "Trident"'

        #spear gladiator is killed (or removed array)
        @gladiators.delete(@gladiators[0])


      end #case end



    end #if end
  end #fight end




end #class end
