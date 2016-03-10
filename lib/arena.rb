class Arena
    attr_accessor :gladiators

    def initialize(name)
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

    def add_gladiator(gladiator)
        gladiators << gladiator if gladiators.size < 2 and
                                not gladiators.include?(gladiator)
    end

    def remove_gladiator(name)
        gladiators.each do |gladiator|
            if gladiator.name == name
                gladiators.delete(gladiator)
            end
        end
    end

    def entertained?
        gladiators.each do |gladiator|
            return true if gladiator.name == "Maximus"
        end
        false
    end

    def live?(loser)
        death, life = 'down', 'up'
        puts "The loser (#{loser.name}) lost the battle with their " +
             "pathetic #{loser.weapon}\n" +
             "do they deserve to continue breathing?\n" +
             "thumbs '#{death}' to end their life, " +
             "thumbs '#{life}' to save them\n" +
             "thumbs: "
        verdict = gets.chomp
        gladiators.delete(loser) if verdict == death
    end

    def get_loser
        if @wins[gladiators[0].weapon.to_sym] == gladiators[1].weapon
            loser = gladiators[1]
        else
            loser = gladiators[0]
        end
        loser
    end

    def fight(loser_dies = true)
        if gladiators.size == 2
            # Maximus should always win
            maximus_i = gladiators.index(gladiators.find {|gladiator|
                                             gladiator.name == "Maximus"})
            return gladiators.delete_at(1-maximus_i) if maximus_i

            # No one shall live with the same weapon
            if gladiators[0].weapon == gladiators[1].weapon
                return self.gladiators = []
            end

            loser = get_loser
            if not loser_dies
                live?(loser)
            else
                gladiators.delete(loser)
            end

        end
    end

end
