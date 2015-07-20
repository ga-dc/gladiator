class Arena
def initialize(name)
   @name= name.capitalize
   @gladiators= []
  end

 def name
 return @name
 end

 def gladiators
   return @gladiators

 end

#add until 2

def add_gladiator(gladiator)
  @gladiators.push(gladiator)
  until (@gladiators == 2)
    retutn (@gladiators)

end

end #end of class




#if == 2 fight
#assign a weapon
#determine winner 
#Trident > Spear
# Spear > Club
# Club > Trident
# weapon == weapon eliminate
