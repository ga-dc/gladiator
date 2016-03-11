require "pry"

class Arena
    attr_accessor :name, :gladiators, :fight

    def initialize (name)
      @name = name.capitalize
      @gladiators = []
      @fight = []
    end

    def add_gladiator (gladiator)
      if @gladiators.length < 2
        @gladiators << gladiator
    else
      if @gladiators.length > 2
        remove_gladiators
        puts "FIGHT TO THE DEATH"
      end
    end
  end
  def fight
    # [fight_1, fight_2, fight_3, fight_4]
  # end
  # def fight_1
    return if @gladiators.count < 2
    first = @gladiators[0]
    second = @gladiators[1]
    if first.weapon == "Trident" && second.weapon == "Spear"
      @gladiators.delete_at(1)
    end
    if second.weapon == "Trident" && first.weapon == "Spear"
      @gladiators.delete_at(0)
  #   end
  #
  #   first = @gladiators[0]
  #   second = @gladiators[2]
  #   if first.weapon == "Club" && second.weapon == "Spear"
  #     @gladiators.delete_at(1)
  #   end
  #   if second.weapon == "Club" && first.weapon == "Spear"
  #     @gladiators.delete_at(0)
  #   end
  #   end
  #   first = @gladiators[1]
  #   second = @gladiators[2]
  #   if first.weapon == "Club" && second.weapon == "Spear"
  #     @gladiators.delete_at(1)
  #   end
  #   if second.weapon == "Club" && first.weapon == "Spear"
  #     @gladiators.delete_at(0)
  #   end
  # end
  # first = @gladiators[2]
  # second = @gladiators[3]
  # if second.weapon == "Club" && first.weapon == "Club"
  #   @gladiators.delete_at(2,3)
  end
end
end
