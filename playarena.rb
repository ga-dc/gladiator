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
arena1 = Arena.new("thunderdome")
arena2 = Arena.new("ga")
arena3 = Arena.new("the streets")

binding.pry
puts"abcd"
