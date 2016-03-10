class Arena

  attr_accessor :name         #This does not seem to work if there is a "_" in the variable.  I think this is because the arena_spec.rb file uses the syntax arena.name, so the instance variable has to be "name".

  def initialize(arena_name)
    @name = arena_name
  end

end
