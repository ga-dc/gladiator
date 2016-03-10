class Arena
  attr_accessor :name, :gladiators

  def initialize(name, gladiators = [])
    @name = name.capitalize
    @gladiators = gladiators
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators << gladiator
    else
      puts "kthanksbye"
    end
  end

  def fight
    weapon_switch = {"Trident" => "Spear", "Spear" => "Club", "Club" => "Trident"}

    if @gladiators.count == 2
      if @gladiators.include?("Maximus")
        puts "Maximus wins"
      elsif @gladiators.first.weapon == @gladiators.last.weapon
      @gladiators.pop(2)
      elsif weapon_switch[@gladiators.first.weapon] == @gladiators.last.weapon
        @gladiators.delete_at(1)
      else
        @gladiators.delete_at(0)
      end
    end
  end

end
