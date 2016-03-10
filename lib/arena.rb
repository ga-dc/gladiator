class Arena
  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
    else
      puts "There are 2 gladiators in the arena already."
    end
  end

end
