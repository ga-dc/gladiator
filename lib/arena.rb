class Arena
  attr_accessor :name, :gladiators

  def initialize (name)

    @name = name.capitalize
    @gladiators = []


  end

  def add_gladiator (name)
    if @gladiators.length < 2
     @gladiators << name
   else "You have 2 Gladiators!"
  end
end


end
