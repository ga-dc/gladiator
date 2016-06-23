require_relative "./gladiator"

class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator if @gladiators.count < 2
  end

  def fight
    # Do nothing is there is no gladiator in the arena.
    return if @gladiators.count < 2

    winner = determine_winner       # Determine the winner.
    @gladiators = []                # Clear the list.
    @gladiators << winner if winner # Push the winner if any.
  end

  def determine_winner
    if @gladiators[0].weapon == @gladiators[1].weapon
      nil
    elsif @gladiators[0].weapon.downcase == "spear"
      case @gladiators[1].weapon.downcase
      when "club"    ; @gladiators[0]
      when "trident" ; @gladiators[1]
      end
    elsif @gladiators[0].weapon.downcase == "club"
      case @gladiators[1].weapon.downcase
      when "trident" ; @gladiators[0]
      when "spear"   ; @gladiators[1]
      end
    elsif @gladiators[0].weapon.downcase == "trident"
      case @gladiators[1].weapon.downcase
      when "spear"   ; @gladiators[0]
      when "club"    ; @gladiators[1]
      end
    end
  end
end
