class Gladiator

def initialize(name, weapon)
    @name = name
    @weapon = weapon
end

def name
  return @name
end

def weapon
  return @weapon
end


end


# 13) Gladiator#name has a name
#     Failure/Error: subject(:gladiator){Gladiator.new("Maximus","Sword")}
#     ArgumentError:
#       wrong number of arguments (2 for 0)
#     # ./spec/gladiator_spec.rb:6:in `initialize'
#     # ./spec/gladiator_spec.rb:6:in `new'
#     # ./spec/gladiator_spec.rb:6:in `block (2 levels) in <top (required)>'
#     # ./spec/gladiator_spec.rb:10:in `block (3 levels) in <top (required)>'
#
# 14) Gladiator#name has a weapon
#     Failure/Error: subject(:gladiator){Gladiator.new("Maximus","Sword")}
#     ArgumentError:
#       wrong number of arguments (2 for 0)
#     # ./spec/gladiator_spec.rb:6:in `initialize'
#     # ./spec/gladiator_spec.rb:6:in `new'
#     # ./spec/gladiator_spec.rb:6:in `block (2 levels) in <top (required)>'
#     # ./spec/gladiator_spec.rb:14:in `block (3 levels) in <top (required)>'
