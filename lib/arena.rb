

class Arena
  attr_accessor :name, :gladiators
  def initialize name
    @name = name
    @gladiators = []
  end
  def name
    @name.capitalize!
  end
  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end
  def fight
    if @gladiators.length == 2
      if @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Spear'
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Trident'
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Club'
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Spear'
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Trident'
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Club'
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators = []
      end
    end #END of if length = 2
  end  #end of def fight

  def remove_gladiator gladiator

  end #end of remove gladiator 

end
