
# arena properties: name
# 	name should be capitalized
# 	can have gladiators
# 	add a gladiator to the arena
# 	should never have more than 2 gladiators in it at a time
# 	if two gladiators in the arena, call a fight method
# 		results in the elimination of one of the gladiators from the arena.

# Winning conditions:
# 	Trident beats Spear
# 	Spear beats Club
# 	Club beats Trident
# 	If the two gladiators have the same weapon, they are both eliminated.

require 'pry'
require_relative 'gladiator'
# require 'gladiator'

class Arena

	# ======= initialize
	def initialize(arena_name)
		puts "-- initialize Arena"
		@name = arena_name
		@gladiator_fighters = []
	end

	# ======= make gladiators
	def make_gladiators
		puts "-- make_gladiators"
		maximus = Gladiator.new("Maximus")
		romanesk = Gladiator.new("Romanesk")
		colossus = Gladiator.new("Colossus")
		@gladiators = [maximus, romanesk, colossus]
	end

	# ======= arm gladiators
	def arm_gladiators()
		puts "-- arm_gladiators"
		for gladiator in @gladiators
			next_weapon = gladiator.select_weapon(@gladiators)
		end
	end

	# ======= select gladiators
	def start_fight
		puts "-- start_fight"
		fighter_index1 = 0
		fighter_index2 = 0
		while (fighter_index1 == fighter_index2)
			fighter_index1 = get_fighters[0]
			fighter_index2 = get_fighters[1]
		end
		gladiator1 = @gladiators[fighter_index1]
		gladiator2 = @gladiators[fighter_index2]
		weapon1 = gladiator1.weapon
		weapon2 = gladiator2.weapon
		winner = get_winner(gladiator1, gladiator2)
	end

	# ======= get randomized pair of gladiator indexes
	def get_fighters
		puts "-- get_fighters"
		fighter_index1 = rand(@gladiators.length)
		fighter_index2 = rand(@gladiators.length)
		return [fighter_index1, fighter_index2]
	end

	# ======= compare gladiator weapons
	def get_winner(gladiator1, gladiator2)
		puts "-- get_fighters"
		winFlag = 0
		matchup = gladiator1.weapon +  "/" + gladiator2.weapon
		matchups = ["Trident/Spear", "Spear/Club", "Club/Trident"]
		for winMatch in matchups
			if (winMatch == matchup)
				winFlag = 1
			end
		end
		if (winFlag == 1)
			winner = gladiator1.name
		elsif (winFlag == 0)
			winner = gladiator2.name
		else
			winner = "draw"
		end
		return winner
	end 
end

coliseum = Arena.new("Coliseum")
coliseum.make_gladiators
coliseum.arm_gladiators
coliseum.start_fight

# binding.pry