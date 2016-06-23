class Gladiator
  attr_accessor :name, :weapon
  # @@gladiators = []
  def initialize(name,weapon)
    @name = name
    @weapon = weapon
  end
end

# def gladiators
#     gladiator = []
#     new_gladiator = ""
#     until new_gladiator
#       puts "Please enter gladiator name"
#       new_gladiator = gets.chomp
#     end
#     new_weapon = ""
#     until new weapon == "Spear" ||weapon == "Club" || weapon == "Trident"
#       puts "Please enter weapon Spear, Club, or Trident "
#       new_weapon = gets.chomp
#     end
#     @@gladiator << (new_gladiator,new_weapon)
# # end
# end
