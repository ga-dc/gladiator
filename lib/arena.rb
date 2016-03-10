class Arena

  attr_accessor :name         #This does not seem to work if there is a "_" in the variable.  I think this is because the arena_spec.rb file uses the syntax arena.name, so the instance variable has to be "name".
  attr_accessor :gladiators

  #You have to have an attr_accessor if you want to define variables inside a class but not inside a method if you want to access them from individual instances.

  def initialize(arena_name, gladiators = []) #you can set a default value in an argument
    @name = arena_name.capitalize  #You don't necessarily need to create a new method to solve each rspec failure.  For example, I just added the capitalize method to arena_name.
    @gladiators = gladiators
  end

  # def gladiators      #"Undefined method gladiators"  This seems to get fixed when I create a method "gladiators" and define an instance variable "gladiators" inside it instead of defining the instance variable inside the class but not in any method.
  #   @gladiators = []
  # end

  def add_gladiator(glad)
    if @gladiators.length < 2  #apparently, a while loop messes things up.
      @gladiators << glad
      #gladiators.length += 1 is not necessary.
    end
  end

  def fight
    if @gladiators.length < 2
    else                      #Why do I need an else statement here but not an else statement in the add_gladiator method
      #if spear weapon vs trident weapon
      if @gladiators[0].weapon === "Spear" && @gladiators[1].weapon === "Trident"
        #remove spear gladiator from gladiators array
          @gladiators.shift

          #if spear weapon vs trident weapon
      elsif @gladiators[1].weapon === "Spear" && @gladiators[0].weapon === "Trident"
        #remove spear gladiator from gladiators array
            @gladiators.pop

      elsif @gladiators[0].weapon === "Club" && @gladiators[1].weapon === "Spear"
          #else if club weapon vs. spear weapon
            @gladiators.shift
              #remove club gladiator from gladiators array

      elsif @gladiators[1].weapon === "Club" && @gladiators[0].weapon === "Spear"
          #else if club weapon vs. spear weapon
          @gladiators.pop
            #remove club gladiator from gladiators array

      elsif @gladiators[0].weapon === "Trident" && @gladiators[1].weapon === "Club"
        #else if trident weapon vs. club weapon
          @gladiators.shift
            #remove trident gladiator from gladiators array
      elsif @gladiators[1].weapon === "Trident" && @gladiators[0].weapon === "Club"
        #else if trident weapon vs. club weapon
          @gladiators.pop
            #remove trident gladiator from gladiators array
      elsif @gladiators[0].weapon === @gladiators[1].weapon
        #else if weapons are the same
          @gladiators.shift
          @gladiators.shift
            #remove both gladiators from @gladiators array
      end

    end
  end

end
