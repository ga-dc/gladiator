# require_relative "arena"

class Gladiator
  attr_accessor :name, :weapon


 # 4 add_gladiator adds a gladiator to the arena
 # 5 gladiator can add multiple gladiators to the arena
 #6 but not more than two at the same time


  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end


  #
  #
  # def add_gladiator
  #   loop do |add|
  #     # puts "Enter a gladiator! #{@gladiators.length} entered so far:"
  #     gladiator = gets.chomp
  #     @gladiators << gladiator
  #
  #     if @gladiators.length == 2
  #       break
  #     end
  #   end
  # end


end


# m = Gladiator.new("Maximus")
# s = Gladiator.new("Spear")
