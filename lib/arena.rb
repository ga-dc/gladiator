class Arena
    attr_reader :name, :gladiators
    def initialize(name)
        # name is always capitalized
        @name = name.capitalize!
        @gladiators = []
    end
    def add_gladiator(gladiator)
        # if there are fewer than two gladiators in the arena, add more gladiators
        if gladiators.count < 2
            gladiators.push(gladiator)
        end
    end
    def fight
        # The hash "winners" lists all possible outcomes
        winners = {
          "Spear" => {"Trident" => "Trident", "Club" => "Spear"},
          "Trident" => {"Spear" => "Trident", "Club" => "Club"},
          "Club" => {"Spear" => "Spear", "Trident" => "Club"}
        }
        # if there are two gladiators in the arena...
        if gladiators.count == 2
            # if they have the same weapon
            if gladiators.first.weapon == gladiators.last.weapon
                # they both die
                gladiators.delete_at(1)
                gladiators.delete_at(0)
            # get the first weapon and match it in the hash, then get the second weapon and match it as a key in the hash with the corresponding value. If the value matches the value of the second gladiator's weapon, then the first one loses. Otherwise, the second one loses.
            elsif winners[gladiators.first.weapon][gladiators.last.weapon] == gladiators.last.weapon
                gladiators.delete_at(0)
            else
                gladiators.delete_at(1)
            end #closes inner if-elsif statement
        end #closes if statement for num of gladiators
    end # closes def play

end #closes class Arena


# This was my first solution, which I solved Friday evening using a TON of if-elsif statements.
            # they kill each other with the same weapon. this has to go first
            # if gladiators.first.weapon == gladiators.last.weapon
            #     gladiators.delete_at(1)
            #     gladiators.delete_at(0)
            # # Trident beats Spear, otherwise Club beats Trident
            # elsif gladiators.first.weapon == "Trident"
            #     if gladiators.last.weapon == "Spear"
            #         gladiators.delete_at(1)
            #     else
            #         gladiators.delete_at(0)
            #     end
            # # Spear beats Club, otherwise Trident beats Spear
            # elsif gladiators.first.weapon == "Spear"
            #     if gladiators.last.weapon == "Club"
            #          gladiators.delete_at(1)
            #      else
            #         gladiators.delete_at(0)
            #     end
            # # By this point I'm thinking there must be an easier way to do this...
            # # Club beats Trident, otherwise Spear beats Club
            # elsif gladiators.first.weapon == "Club"
            #     if gladiators.last.weapon == "Trident"
            #         gladiators.delete_at(1)
            #     else
            #        gladiators.delete_at(0)
            #    end
            # end
        # end
    # end
# end
