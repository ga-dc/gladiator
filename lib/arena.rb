class Arena

  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(name)
    if @gladiators.count < 2
      @gladiators<< name
    else
      puts "Only two gladiators allowed per Arena"
    end
  end

  def fight
    if @gladiators.count == 2

      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.delete_at(1)
        @gladiators.delete_at(0)

      elsif @gladiators[0].weapon == 'Trident'&& @gladiators[1].weapon != 'Club'
        @gladiators.delete_at(1)

      elsif @gladiators[0].weapon == 'Spear'&& @gladiators[1].weapon != 'Trident'
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == 'Club'&& @gladiators[1].weapon != 'Spear'
        @gladiators.delete_at(1)


      else
        @gladiators.delete_at(0)
      end
    end
  end



end
