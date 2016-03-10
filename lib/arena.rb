class Arena
  attr_accessor :name, :gladiators

  def initialize(name, gladiators = [])
    @name = name.capitalize
    @gladiators = gladiators
  end

  def add_gladiator(gladiator)
    gladiators << gladiator unless gladiators.length == 2
  end

  def fight
    unless gladiators.length < 2
      battle = []
      gladiators.each do |gladiator|
        battle << gladiator.weapon
      end
      get_winner(battle)
    end
  end

  def get_winner(battle)
    if battle.sort! == ["Spear", "Trident"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Spear"}
    elsif battle.sort! == ["Club", "Spear"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Club"}
    elsif battle.sort! == ["Club", "Trident"]
      gladiators.delete_if {|gladiator| gladiator.weapon == "Trident"}
    elsif battle[0] == battle[1]
      gladiators.clear
    end
  end

  def remove(gladiator)

  end
end
