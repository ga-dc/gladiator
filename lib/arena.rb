class Arena
  attr_reader :name
  attr_reader :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
    @gladiators.push(gladiator)

    else
      puts "The arena is full"
    end
  end

  def fight()
    if @gladiators.count == 2
      #if spear and trident fight eliminate spear
      if @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        gladiators.shift

      #if spear and club fight eliminate club
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
        gladiators.pop

      #if club and trident fight eliminate trident
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        gladiators.shift


      # #if weapons are the same, eliminate both
      elsif @gladiators.first.weapon == @gladiators.last.weapon
        gladiators.pop
        gladiators.pop

      end
    end
  end
end
