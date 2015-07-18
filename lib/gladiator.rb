
require 'pry'

class Gladiator

	@@weapons = ["Spear", "Club", "Trident"]

	def initialize(whichName)
		puts "-- initialize Gladiator"
		@name = whichName
		@weapon = ''
	end

	# ======= setters
	def select_weapon(gladiators)
		puts "-- select_weapon"
		if @weapon == ''
			weapon_index = rand(gladiators.length)
			which_weapon = @@weapons[weapon_index]
			set_weapon(which_weapon)
			# puts "  which_weapon: " + which_weapon
			# self.weapon(next_weapon)
			return which_weapon
		end
	end

	def set_weapon(assigned_weapon)
		puts "-- set_weapon"
		@weapon = assigned_weapon
	end

	# ======= getters
	def name
		puts "-- name"
		return @name
	end

	def weapon
		puts "-- weapon"
		return @weapon
	end

end

# binding.pry
