class Arena
  attr_reader :name
  attr_accessor :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if gladiators.length < 2
      gladiators << gladiator
    end
  end

  def remove_gladiator(gladiator)
    if gladiators.include? gladiator
      gladiators.delete_at(gladiators.index(gladiator))
    end
  end

  def entertained
    if gladiators[0].name == "Maximus" || gladiators[1].name == "Maximus"
      response = "The crowd cheers!"
    else
      response = "The crowd boos!"
    end
    p response
  end

  def fight
    if gladiators.length == 2
      # assign values to weapons
      weapon_values = {
      Trident: 0,
      Spear: 1,
      Club: 2,
      }
      # assign fight score; note that if fight score evaluates to 0 its a tie, 1 means player 2 wins, and 2 means player 1 wins
      fight_score = (weapon_values[gladiators[0].weapon.to_sym] - weapon_values[gladiators[1].weapon.to_sym]) % 3
      if fight_score == 0
        # tie
        2.times do
          gladiators.pop
        end
        p "Both Gladiators are eliminated!"
        gladiators
      elsif fight_score == 1
        # player 2 wins
        p "#{gladiators[1].name} wins!"
        p "Do you want the loser, #{gladiators[0].name}, to live (2) or die (1)?"
        death_vote(gladiators, fight_score, user_input = gets.chomp.to_i)
      elsif fight_score == 2
        # player 1 wins
        p "#{gladiators[0].name} wins!"
        p "Do you want the loser, #{gladiators[1].name}, to live (2) or die (1)?"
        death_vote(gladiators,fight_score, user_input = gets.chomp.to_i)
      end
    end
  end

  def death_vote(gladiators, fight_score, user_input)
    remove_index = (fight_score - user_input).abs
    p "#{gladiators[remove_index].name} is eliminated by the will of the emperor!"
    gladiators.delete_at(remove_index)
    gladiators
  end
end



# class Gladiator
#   attr_reader :name, :weapon
#
#   def initialize(name, weapon)
#     @name = name
#     @weapon = weapon
#   end
#
# end
#
#
# meg = Arena.new("megalopolis")
# max = Gladiator.new("Maximus","Spear")
# bil = Gladiator.new("Bilcephalon","Trident")
# eph = Gladiator.new("Ephates","Club")
# cyl = Gladiator.new("Cylodeus","Club")
# meg.add_gladiator(max)
# meg.add_gladiator(bil)
# # meg.remove_gladiator(max)
# # meg.add_gladiator(cyl)
# meg.entertained
# meg.fight
