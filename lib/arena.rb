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

  def fight
    if gladiators.length == 2
      # assign values to weapons
      weapon_values = {
      Trident: 0,
      Spear: 1,
      Club: 2,
      }
      # assign fight score, note that if fight score evaluates to 0 its a tie, 1 means player 2 wins, and 2 means player 1 wins
      fight_score = (weapon_values[gladiators[0].weapon.to_sym] - weapon_values[gladiators[1].weapon.to_sym]) % 3
      if fight_score == 0
        # tie
        2.times do
          gladiators.pop
          p "Both Gladiators are eliminated!"
        end
      elsif fight_score == 1
        # player 2 wins
        gladiators.delete_at(0)
        p "#{gladiators[0].name} wins!"
      elsif fight_score == 2
        # player 1 wins
        gladiators.delete_at(1)
        p "#{gladiators[0].name} wins!"
      end
      gladiators
    end
  end
end
