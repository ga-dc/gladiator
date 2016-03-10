

class Arena
  attr_accessor :name, :gladiators
  # @@count_glads = 0

  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator (gladiator)
    if @gladiators.count < 2
      @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.count == 2
      if @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Trident")
        @gladiators.delete_at(0)
      elsif
        @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Club")
        @gladiators.delete_at(1)
      elsif
        @gladiators[0].weapon == ("Trident") && @gladiators[1].weapon == ("Club")
        @gladiators.delete_at(0)
      elsif
        @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.clear
      end
    end
  end
end
