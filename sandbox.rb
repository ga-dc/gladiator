require 'pry'
require_relative 'lib/arena.rb'
require_relative 'lib/gladiator.rb'

gladiator = Gladiator.new("Hercules", "Spear")

arena = Arena.new("Ring of Death")


binding.pry

puts "done"
