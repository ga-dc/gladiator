class Arena
  attr_accessor :name

    def initialize(arena_name)
    @name = arena_name.capitalize
    @gladiators = []
  end
  def gladiators
    return @gladiators
  end
  def add_gladiator(gladiator)
    if @gladiators.count < 2
    @gladiators= gladiators.push(gladiator)
    end
  end
  def fight
    if @gladiators.count == 2
      if @gladiators[0].weapon == trident && @gladiators[1].weapon == spear
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == spear && @gladiators[1].weapon == club
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == trident && @gladiators[1].weapon == club
        gladiators.delete_at(0)
      elsif @gladiators[0].weapon == club && @gladiators[1].weapon == trident
        gladiators.delete_at[1]

      end


end
