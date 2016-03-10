require "pry"
# Gladiator has a name
# Glasdiator has a weopon
rspec ./spec/gladiator_spec.rb:13 #name has a weapon
class Gladiator
  def initialize name, weapon
    @name = name
    @weapon = weapon
  end
end

binding.pry
