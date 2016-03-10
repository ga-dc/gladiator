class Arena
  attr_accessor :name, :gladiators, :fight

  def initialize name, gladiators = []
    @name = name.capitalize
    @gladiators = gladiators
    @fight = fight

  end

  def add_gladiator gladiator
    if @gladiators.count < 2
      @gladiators << gladiator
      # puts "Welcome #{gladiator.name} to the arena, ready to fight with a #{gladiator.weapon}"
    else
    if @gladiators.count > 2
      remove_gladiators
      puts "You already have 2 gladiators fighting. Remove one!"
    end
    end
  end

  def remove_gladiators
    @gladiators.pop
  end

  def fight
    if @gladiators.count == 2
      if @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Trident")
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == ("Spear") && @gladiators[1].weapon == ("Club")
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == ("Trident") && @gladiators[1].weapon == ("Club")
         @gladiators.delete_at(0)
      elsif @gladiators[0].weapon ==  @gladiators[1].weapon
          @gladiators.clear
      end
      # end
      end
    end
  end

#   class Fight
#     attr_accessor :winner
#
#     def initialize gladiator1, gladiator2
#       if gladiator1.name == "Maximus"
#         @winner = gladiator1
#       elsif gladiator2.name == "Maximus"
#         @winner = gladiator2
#       elsif test [gladiator1.weapon, gladiator2.weapon]
#         @winner = gladiator1
#       elsif test [gladiatorB.weapon, gladiatorA.weapon]
#         @winner = gladiator2
#       else
#         @winner = false
#       end
#     end
#   end
# end
