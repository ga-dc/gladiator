class Arena
  attr_accessor :name, :gladiators

  def initialize name, gladiators = []
    @name = name.capitalize!
    @gladiators = gladiators
  end

def add_gladiator new_gladiator_name
  if @gladiators.count ==2
    puts "You cannot have more than two Gladiators in the arena"
  else
  @gladiators << new_gladiator_name
puts "#{@gladiators.count}"
end
end


end
