class Arena
  attr_accessor :arena_name, :gladiators

def initialize (arena_name, gladiators)
  @arena_name = arena_name.capitalized
  @gladiators = []
end

end
