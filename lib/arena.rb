#require "pry"

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
    if @gladiators.first.weapon === @gladiators.last.weapon
        @gladiators.clear

    elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.shift

    elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
        @gladiators.shift

    elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.shift

    else @gladiators.pop
    end
      # pop removes and keeps the last item in the array
      # shift removes and keeps first item in array
  end # end fight


end #end Arena

# play in sandbox to see if this works, you can do arena.fight to see if it works

#puts "end pry"
