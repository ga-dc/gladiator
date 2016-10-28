
class Arena
  attr_accessor :arena_name, :gladiators

  def initialize(arena_name)
  	@arena = arena_name
  	@arena_with_gladiators = []
  end
  def arena_rules(gladiators)
  	 if gladiators.length != 2
      puts "No more than two gladiators in the area at a time"
        @arena_with_gladiators.push(gladiators.take(2))
        fight(@arena_with_gladiators) # calls the fight method and passes the array with two gladiators
    end
   end
end


class Gladiator
  attr_accessor :name, :weapon, :gladiators
  @@gladiators = []

  def initialize (gladiator_name,gladiator_weapon)
    @gladiator = gladiator_name
    @weapon = gladiator_weapon
  end
  def get_gladiator
  	 gladiator = [ @gladiator , @weapon]
  end
end


## creates new instances for Gladiator class
maximus = Gladiator.new("Maximus","Sword")
bilcephalon = Gladiator.new("Bilcephalon","Trident")
ephates = Gladiator.new("Ephates","Club")
cylodeus = Gladiator.new("Cylodeus","Club")


# creates a new gladiator
def set_gladiator(name)
gladiator_array=[]
gladiator=name.get_gladiator
gladiator.to_s
gladiator_array.push(gladiator)
return gladiator_array
end

# creates a list to add each gladiator
gladiators_names= [maximus,bilcephalon,ephates,cylodeus]
gladiator_list =[]

#goes thru gladiator and adds the list of gladiators to empty array
gladiators_names.each do |gladiator|
	gladiator_list.push( set_gladiator(gladiator))
end

puts gladiator_list #final list of all my gladiators


megalopolis = Arena.new("Megapolis")
megalopolis.arena_rules(gladiator_list) #passes on the gladiators list to the arena_rules method
