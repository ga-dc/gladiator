class Gladiator
  attr_accessor :name, :weapon
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end
end

#
# rspec ./spec/gladiator_spec.rb:9 # Gladiator#name has a name
# rspec ./spec/gladiator_spec.rb:13 # Gladiator#name has a weapon
