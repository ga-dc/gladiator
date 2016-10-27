class Arena

  def initialize (name)
   @name = name
   @gladiators = []
  end
 def name
  return @name.capitalize
 end
 def gladiator
   return @gladiators
end
 def add_gladiator(new_gladiator)
   if @gladiators.count < 2
     @gladiators.push(new_gladiator)
  # if @gladiators.count > 2
  #    break
  #  end
   end
 end
def fight
  weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }
    if @gladiators.count ==2
      if @gladiators.first.weapon_switch == "Trident"
        if @gladiators.first.weapon_switch == "Spear"

# def fight
#   weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }
#
#   if @gladiators.count == 2
#     if @gladiators.first.weapon_switch == "Trident"
#     end
#    end
#  end
# end
