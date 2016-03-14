class Arena

  attr_accessor :name, :gladiators

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
      #compare weapons (tridentVspear, clubVspear, tridentVclub, sameVsame)

      #create if statements with weapon combinations
      if @gladiators.weapon(0) && @gladiators.weapon(1)
        # remove gladiator with spear from array
        @gladiators.delete_at(0)
      #end

    #   elsif @gladiators.weapon(0) && @gladiators.weapon(2)
    #     # remove gladiator with club from array
    #     @gladiators.delete_at(2)
    #   end
    #
    #   elsif @gladiators.weapon(1) && @gladiators.weapon(2)
    #     # remove gladiator with trident from array
    #     @gladiators.delete_at(1)
    #   end
    #
    #   else # they have the same weapon, both deleted
    #     @gladiators.delete.all
    #   end
    end
  end
end
