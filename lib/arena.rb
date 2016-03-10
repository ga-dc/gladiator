# require "pry"


class Arena #created a class called arena inside where im going to create instance of arena

attr_accessor :name, :gladiators #this acts as a getter and setter

  def initialize(arena_name)
    @name = arena_name.capitalize #this is an instnace of arena
    @gladiators = [] #this creates gladiators empty array
  end

# to add gladiators to an arena
  def add_gladiator(gladiator)
    if gladiators.length < 2
      gladiators.push(gladiator)
    end
  end




end




# binding.pry
# puts "bug fix"
