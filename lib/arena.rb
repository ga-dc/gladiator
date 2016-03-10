class Arena
  attr_accessor :name, :gladiators

  def initialize name
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
      puts @gladiators
    else
      puts "There are 2 gladiators in the arena already."
    end
  end

  def fight
    if @gladiators.length <= 1
      puts "Needs more gladiators!"
    else
      gladiators.each do
        puts gladiators.name
      end
    end
  end

end
