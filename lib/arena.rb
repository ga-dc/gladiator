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
     @gladiators[0]
     @gladiators[1]
     if @gladiators[0].weapon == 'Trident'&& @gladiators[1].weapon != 'Club'
         @gladiators.delete_at 1
       end
    if @gladiators[0].weapon == 'Spear'&& @gladiators[1].weapon != 'Trident'
          @gladiators[1].delete_at(1)
        end
    if @gladiators[0].weapon == 'Club'&& @gladiators[1].weapon != 'Spear'
             @gladiators[1].pop(1)
          end

  if @gladiators[0].weapon == @gladiators[1].weapon
           @gladiators[0].pop(0)
           @gladiators[1].pop(1)

       else
         @gladiators[0].pop(0)
       end
     end
  end



end
