# require "pry"

require_relative "gladiator"

class Arena < Gladiator
  attr_accessor :name, :gladiators

 # 3 gladiators starts off empty

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    @counter = 0
  end

# 1 Arena name
# 2 Arena name is always capitalized
  def name
    @name
  end

# 4 add_gladiator adds a gladiator to the arena
# 5 gladiator can add multiple gladiators to the arena
# 6 but not more than two at the same time



def add_gladiator(gladiator)
  if @gladiators.length == 2
    return
  else
    @gladiators << gladiator
  end
end

# 7 fight when no gladiators does nothing
# 8 fight when one gladiator does nothing

#9 when Spear v Trident kills: spear when fighting trident
#10 when Club v Spear kills: club when fighting spear
#11 when Trident v Club kills: trident when fighting club

#

def fight
  if @gladiators.length == 2
    # puts "#{@gladiators}"
    @gladiators.each do |type|
      weapons_rank = ["Spear", "Club", "Trident"]
      w = type.weapon
      @counter = @counter + weapons_rank.index(w)
    end

    if @gladiators[0].weapon == @gladiators[1].weapon
      @gladiators = []
    end

    if @counter == 1 && @gladiators[0].weapon == "Spear" #spear and club, club wins
      @gladiators.delete(@gladiators[1])
      return
    else
      @gladiators.delete(@gladiators[0])
      puts "#{@gladiators}"
      return
    end


    if @counter == 2 && @gladiators[0].weapon == "Spear" #spear and trident, trident wins
      @gladiators.delete(@gladiators[0])
    else
      @gladiators.delete(@gladiators[1])
      puts "#{@gladiators}"
    end

    if @counter == 2 && @gladiators[0].weapon == "Trident" #club and trident, club wins
      @gladiators.delete(@gladiators[0])
    else
      @gladiators.delete(@gladiators[1])
      puts "#{@gladiators}"
    end

  end
end

end  #class end




# m = Arena.new("megalopolis")

# binding.pry
# puts "end of output"
