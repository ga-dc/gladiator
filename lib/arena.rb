class Arena
    attr_accessor :gladiators

    def initialize name
        @name = name
        @gladiators = []
        @wins = {
            Trident: "Spear",
            Spear: "Club",
            Club: "Trident"
        }
    end

    def name
        @name.capitalize
    end

    def add_gladiator gladiator
        gladiators << gladiator if gladiators.size < 2 and
                                not gladiators.include?(gladiator)
    end

    def remove_gladiator name
        gladiators.each do |gladiator|
            if gladiator.name == name
                gladiators.delete(gladiator)
            end
        end
    end

    def fight
        if gladiators.size == 2
            # Maximus should always win
            maximus_i = gladiators.index(gladiators.find {|gladiator|
                                             gladiator.name == "Maximus"})
            return gladiators.delete_at(1-maximus_i) if maximus_i

            if gladiators[0].weapon == gladiators[1].weapon
                return self.gladiators = []
            end

            if @wins[gladiators[0].weapon.to_sym] == gladiators[1].weapon
                loser = gladiators[1]
            else
                loser = gladiators[0]
            end
            gladiators.delete(loser)
        end
    end

end
