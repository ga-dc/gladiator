class Gladiator

	attr_reader :name, :weapon

	def initialize(gladiator_name, gladiator_weapon)
		@name = gladiator_name
		@weapon = gladiator_weapon.capitalize
	end

end
