class Arena
  attr_accessor :name, :gladiators, :fight

  def initialize name, gladiators = []
    @name = name.capitalize
    @gladiators = gladiators
  end

  # def announce_gladiators
  #   @gladiators.each do |gladiator|
  #     print "Introducing #{gladiator.name} to the Arena with a #{gladiator.weapon}."
  #   end
  # end

  def add_gladiator gladiator
    if @gladiators.count < 2
      @gladiators << gladiator
    else
    if @gladiators.count > 2
      remove_gladiators
      puts "You already have 2 gladiators fighting. Remove one!"
      @gladiators.pop
    end
    end
  end

  def remove_gladiators
    @gladiators.pop
  end
end
