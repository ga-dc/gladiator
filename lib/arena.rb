# require “pry”

class Arena
  # Create an initialize method and new instances.
  def initialize(name)
    # Capitalize the arena name.
    @name = name.capitalize
    # Create an array to add multiple gladiators in the arena.
    @gladiators = []
    @fight
  end

  # Add a name to the arena.
  def name
    return @name
  end

  # Add a gladiator(s)
  def gladiators
    return @gladiators
  end

  # Add a gladiator(s) to the arena.
  def add_gladiator(new_gladiators)
    # There can not be more than 2 gladiator in the arena.
    # Count the length of the array.
    # http://apidock.com/ruby/Array/count
    if @gladiators.count < 2
      # Push new gladiators into the gladiators array.
      @gladiators.push(new_gladiators)
    end
  end

  def fight
    # If there are two gladiator, create fight scenario.
    if @gladiators.count == 2
      # If gladiator 1 has a spear ...
      case @gladiators[0].weapon == "Spear"
        when @gladiators[1].weapon == "Trident"
          @gladiators.delete_at(0)
        when @gladiators[1].weapon == "Club"
          @gladiators.delete_at(1)
      end # Closes "case"
    end # Closes "count"
  end # Closes "fight"
end # Closes "Arena"

# binding.pry


# Previous solution trials. 2 failures.
# if @gladiators.count == 2
#   if @gladiators[0].weapon == @gladiators[1].weapon
#     @gladiators.pop(2)
#   elsif @gladiators[0].weapon == "Trident"
#     @gladiators.delete_at(1)
#   elsif @gladiators[0].weapon == "Spear"
#     @gladiators.delete_at(1)
#   elsif @gladiators[0].weapon == "Club"
#     @gladiators.delete_at(1)
#   end
# # end

# if @gladiators[0].weapon = @gladiators[1].weapon
#   @gladiators.clear()
# end

# when @gladiators[1].weapon == "Spear"
# @gladiators.delete_at(0)
# @gladiators.delete_at()

# case @gladiators[0].weapon === "Trident"
# when @gladiators[1].weapon == "Spear"
#   @gladiators.delete_at(0)
# when @gladiators[1].weapon == "Club"
#   @gladiators.delete_at(0)
# end

# if @gladiators[0].weapon == @gladiators[1].weapon
#   @gladiators.pop(2)    
# end