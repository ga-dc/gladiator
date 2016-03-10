class Arena

  attr_accessor :name         #This does not seem to work if there is a "_" in the variable.  I think this is because the arena_spec.rb file uses the syntax arena.name, so the instance variable has to be "name".

  #You have to have an attr_accessor if you want to define variables inside a class but not inside a method if you want to access them from individual instances.

  def initialize(arena_name)
    @name = arena_name.capitalize  #You don't necessarily need to create a new method to solve each rspec failure.  For example, I just added the capitalize method to arean_name.
  end

  def gladiators      #"Undefined method gladiators"  This seems to get fixed when I create a method "gladiators" and define an instance variable "gladiators" inside it instead of defining the instance variable inside the class but not in any method.
    @gladiators = []
  end

end
