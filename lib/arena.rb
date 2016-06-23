# require("pry")
require_relative "gladiator.rb"

class Arena
    attr_accessor :name, :gladiators

    def initialize name                     # create a new Arena
        @name = name.capitalize             # capitalize what the user enters
        @gladiators = []                    # define a gladiators array that starts empty
    end

    def add_gladiator instance              # ASSUMING the user has already run Gladiator.new methods...
        if @gladiators.length < 2           # ONLY if there are fewer than two gladiators already in the arena
            @gladiators << instance         # add the gladiator instance to the gladiators array
        end
    end

    def remove_gladiator instance
        @gladiators.delete(instance)        # allow the user to remove gladiators from the arena
    end

    def entertained?
        puts "Maximus: 'ARE YOU NOT ENTERTAINED?!?'"   # during the fight, ask if the crowd is entertained
    end

    ####################### FOR THE THUMBS UP/DOWN BONUS #######################
    def thumbs_up_or_down winner, loser
        puts `clear`                                                                          # clear the screen
        puts "People of the #{@name}, should #{loser.name} die? Thumps 'up' or 'down':"       # for the bonus...
        thumb = gets.to_s.chomp                                                               # ask the crowd for a
        while thumb != "up" && thumb != "down"                                                # thumbs up or thumbs down
            puts "Choose 'up' or 'down' or face the Emperor's wrath!"                         # force a readable response
            thumb = gets.to_s.chomp
        end
        binding.pry
        if thumb == "up"                                  # if it's a thumbs up...
            puts "FINISH HIM!"                            # the crowd calls on the winner to finish the loser
            5.times do
                puts "."
                sleep 0.2                                 # delay
            end
            puts "#{loser.name} is vanquished! Long live #{winner.name}!"    # the winner stays the winner
            @gladiators.delete(loser)                                        # the loser dies
            sleep 1.5
            return winner
        elsif thumb == "down" && winner.name == "Maximus"       # if it's thumbs down but Maximus is the winner...
            puts "MAXIMUS!!! MAXIMUS THE MERCIFUL!!!"           # both gladiators survive!
            5.times do
                puts "."
                sleep 0.2                                 # delay
            end
            puts "Both #{winner.name} and #{loser.name} will live to fight another day!"
            sleep 1.5
            return @gladiators
        else
            puts "#{loser.name} is saved by the #{@name}'s mercy! #{winner.name} shall DIE!"  # if it's a thumbs down...
            @gladiators.delete(winner)                                                        # the loser is saved by the
            sleep 1.5                                                                         # crowd and the winner dies
            return loser
        end
    end
    ############################################################################

    def fight
        if @gladiators.length < 2             # if there are fewer than 2 gladiators in
        else                                  # the arena, there is no fight
            puts `clear`                      # otherwise clear the screen...
            puts "AND NOW WE FIGHT!!!"        # and begin the fight
            sound_fx = ["SMASH", "BANG"]      # create the sound fx
            2.times do |i|                    # begin sound fx loop, to run twice
                5.times do
                    puts "."
                    sleep 0.2                 # delay
                end
                puts "#{sound_fx[i]}!"        # sound fx
            end
            5.times do
                puts "."
                sleep 0.2                     # delay for the entertained? question
            end
            if @gladiators[0].name == "Maximus" || @gladiators[1].name == "Maximus"     # if Maximus is fighting...
                self.entertained?                                                   # run the entertained? method
            else                                                                    # if not...
                puts "SCREECH!"                                                     # more sound fx
            end
            10.times do                                                             # final result delay loop
                puts "."
                sleep 0.2
            end
            ####################### FOR THE MAXIMUS BONUS #######################
            # @gladiators.each_with_index do |glad, index|                      # for the bonus...
            #     if glad.name == "Maximus"                   # if Maximus is one of the competitors...
            #         puts "#{glad.name} is the winner!"      # he wins
            #         winner = glad                                           # set him as the winner
            #         loser = @gladiators[@gladiators.index{|x| x != glad}]   # the other guy is the loser
            #         sleep 2
            #         puts `clear`
            #         return self.thumbs_up_or_down winner, loser    # for the thumbs up/down bonus
            #     end
            # end
            #####################################################################
            if @gladiators[0].weapon == @gladiators[1].weapon       # if the two gladiators have the same weapon...
                puts "#{@gladiators[0].name} and #{@gladiators[1].name} are unable to vanquish one another. They both die!"
                @gladiators = []                                    # they both die
                sleep 1.5
                return @gladiators
            else
                if (@gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club") || (@gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident") || (@gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear")
                    winner = @gladiators[0]         # the above conditions specify situations wherein gladiator index 0 wins
                    loser = @gladiators[1]
                elsif (@gladiators[1].weapon == "Spear" && @gladiators[0].weapon == "Club") || (@gladiators[1].weapon == "Club" && @gladiators[0].weapon == "Trident") || (@gladiators[1].weapon == "Trident" && @gladiators[0].weapon == "Spear")
                    winner = @gladiators[1]         # the above conditions specify situations wherein gladiator index 1 wins
                    loser = @gladiators[0]
                end
                puts "#{winner.name} is the winner!"
                sleep 2
                # return self.thumbs_up_or_down winner, loser  # for the thumbs up/down bonus
                @gladiators.delete(loser)                      # when the bonus is commented out, delete the loser...
                return winner                                  # return the winner
            end
        end
    end
end

# PRELOADED COMMANDS USED FOR TESTING:
# arena = Arena.new("megalopolis")
# maximus = Gladiator.new("Maximus","Spear")
# bilcephalon = Gladiator.new("Bilcephalon","Trident")
# ephates = Gladiator.new("Ephates","Club")
# cylodeus = Gladiator.new("Cylodeus","Club")
# arena.add_gladiator(maximus)
# arena.add_gladiator(bilcephalon)

# binding.pry
# puts "end"
