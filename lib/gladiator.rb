class Gladiator
  attr_accessor :gladiators

 # 3 gladiators starts off empty
 # 4 add_gladiator adds a gladiator to the arena
 # 5 gladiator can add multiple gladiators to the arena
 #6 but not more than two at the same time
  def initialize()
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator
  end


# 7 fight when no gladiators does nothing


end


# m = Gladiator.new("Maximus")
