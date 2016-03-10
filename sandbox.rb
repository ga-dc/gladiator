require 'pry'
require_relative 'lib/arena.rb'
require_relative 'lib/gladiator.rb'

arena = Arena.new("Ring of Death")
a = Gladiator.new("Bilcephalon","Trident")
b = Gladiator.new("Bob","Spear")



arena.add_gladiator(a)
arena.add_gladiator(b)
arena.remove_gladiator_name
#puts "#{arena}"





binding.pry

puts "done"
