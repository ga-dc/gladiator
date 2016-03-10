class Arena

  attr_accessor :name, :gladiators, :weapons

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator
    # puts "adding gladiator #{gladiator}"
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight # no gladiators, does nothing
  end

  def start_fight(weapon)
    if @gladiators.length == 2
      #compare weapons (tridentVspear, clubVspear, spearVclub)
      #create if statements with weapon combinations
      if @gladiators[0].weapon && @gladiators[1].weapon
            # remove gladiator with spear from array
          @gladiators.delete[1]
      end
    end
  end

end

megalopolis = Arena.new("megalopolis")
maximus = Gladiator.new("Maximus", "Trident")
tiffany = Gladiator.new("Belle", "Spear")
gort = Gladiator.new("Gort", "Club")
