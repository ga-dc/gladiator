class Arena
   attr_accessor :name, :gladiators
   def initialize(initial_name)
     @name = initial_name.capitalize
     @gladiators = []
   end

   def add_gladiator(new_gladiator)
     if gladiators.length < 2
       self.gladiators = gladiators.push(new_gladiator)
     end
   end

   def fight
     if gladiators.length == 2
       #both are removed
       if gladiators[0].weapon == gladiators[1].weapon
         self.gladiators = []
       #first wins
       elsif (gladiators[0].weapon == "Trident" && gladiators[1].weapon =="Spear") || (gladiators[0].weapon == "Spear" && gladiators[1].weapon =="Club") || (gladiators[0].weapon == "Club" && gladiators[1].weapon =="Trident")
         self.gladiators=[gladiators[0]]
       elsif (gladiators[1].weapon == "Trident" && gladiators[0].weapon =="Spear") || (gladiators[1].weapon == "Spear" && gladiators[0].weapon =="Club") || (gladiators[1].weapon == "Club" && gladiators[0].weapon =="Trident")
           self.gladiators=[gladiators[1]]
       end


     end
   end

end
