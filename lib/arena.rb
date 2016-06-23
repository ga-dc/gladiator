# require "pry"

require_relative "gladiator"

class Arena < Gladiator
  attr_accessor :name, :gladiators

 # 3 gladiators starts off empty

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

# 1 Arena name
# 2 Arena name is always capitalized
  def name
    @name
  end


# 7 fight when no gladiators does nothing
# 8 fight when one gladiator does nothing

#9 when Spear v Trident kills: spear when fighting trident
#10 when Club v Spear kills: club when fighting spear
#11 when Trident v Club kills: trident when fighting club

def add_gladiator(gladiator)
  if @gladiators.length == 2
    return
  else
    @gladiators << gladiator
  end
end



  def fight
    # if @gladiators.length == 2
    #   puts 1
    # end
  end


end




# m = Arena.new("megalopolis")

# binding.pry
# puts "end of output"
