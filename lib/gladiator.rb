class Gladiator
  attr_reader :name, :weapon #getter to call Gladiator.name and Gladiator.weapon

  def initialize(initial_name, initial_weapon)
    @name = initial_name #establish and use instance variable
    @weapon = initial_weapon
  end

end







#rspec spec/gladiator_spec.rb
