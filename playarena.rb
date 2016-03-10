require "pry"
require_relative "lib/gladiator"
require_relative "lib/arena"

#Gladiators
maximus = Gladiator.new("Maximus", "Spear") # maximus.name, maximus.weapon
bilcephalon = Gladiator.new("Bilcephalon", "Trident")
ephates = Gladiator.new("Ephates", "Club")
cylodeus = Gladiator.new("Cylodeus", "Club")


#Arenas
arena = Arena.new("megalopolis")
arena.add_gladiator(maximus)
arena.add_gladiator(bilcephalon)

binding.pry
puts"abcd"
