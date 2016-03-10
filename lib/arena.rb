class Arena
  attr_accessor :gladiators
  attr_reader :name

  ARENA_SIZE = 2 #An arena can only hold two gladiators at a time
  TRIDENT = "Trident"
  SPEAR = "Spear"
  CLUB = "Club"

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    gladiators << gladiator if gladiators.length < ARENA_SIZE
  end

  def fight(life=false) #life IS fair by default aka it is false that life isn't fair
    return if gladiators.length < ARENA_SIZE

    if maximus?
      gladiators.select!{|gladiator| gladiator.name == "Maximus"}
    else
      champion = gladiators.first.weapon
      challenger = gladiators.last.weapon

      if champion == challenger
        gladiators.clear
      elsif (champion == TRIDENT && challenger == SPEAR) ||
        (champion == SPEAR && challenger == CLUB) ||
        (champion == CLUB && challenger == TRIDENT) #all conditions where first gladiator wins
        if life_isnt_fair(life)
          gladiators.shift
        else
          gladiators.pop
        end
      else #all conditions where first gladiator loses
         if life_isnt_fair(life)
           gladiators.pop
         else
           gladiators.shift
         end
      end
    end
  end

  def remove_by_name(n)
    gladiators.reject! do |gladiator|
      gladiator.name == n
    end
  end

  def entertained?
    maximus?
  end

# HELPER METHODS BELOW!

  def maximus?
    gladiators.any?{|gladiator| gladiator.name == "Maximus"}
  end

  def life_isnt_fair(fair = false) # true for thumbs down, false for thunbs up
    life = fair

    # puts "The Emperor wants YOU to choose the fate of these brave warriors! Type 'U' to give him a thumbs up and reward the winning gladiator. Type 'D' to give him a thumbs down and declare victory for the challenger."
    #
    # input = gets.chomp.downcase
    #
    # if input == 'd'
    #   life = true
    # end
    #
    # life
  end
end
