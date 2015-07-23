class Arena
  attr_reader :name, :gladiators
  def initialize (name, gladiators)
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator (gladiator)
    @gladiators << gladiator if self.gladiators.size<2
  end
  def fight (gladiator, gladiator)
    Gladiator.weapon
end


* An arena has a name
  * the name should be capitalized
* An arena can have gladiators
* You can add a gladiator to the arena
  * The arena should never have more than 2 gladiators in it at a time
* If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.
  * Winning conditions:
    * Trident beats Spear
    * Spear beats Club
    * Club beats Trident
    * If the two gladiators have the same weapon, they are both eliminated.
