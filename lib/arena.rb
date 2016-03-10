      require_relative "gladiator.rb"

      class Arena
       attr_accessor :name, :gladiators, :fight, :winner, :club, :spear, :trident

       def initialize name, gladiators = []
         @name = name.capitalize
         @gladiators = gladiators
        #  @fight = fight
        #  @winner = []
        #  @spear = spear
        #  @club = club
        #  @trident = trident

       end


       def add_gladiator gladiator
         if @gladiators.count < 2
           @gladiators << gladiator
         else
         if @gladiators.count > 2
           remove_gladiators
           puts "Too man gladiators! Only two allowed!"
           @gladiators.pop
         end
         end
       end

       def remove_gladiators
         @gladiators.pop
       end

       def fight
        if @gladiators.count ==2
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
