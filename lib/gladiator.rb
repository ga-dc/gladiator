#require "pry"

class Gladiator# < ActiveRecord::Base

  #belongs_to :arena

  attr_accessor :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

end

maximus = Gladiator.new("Maximus", "Trident")

# binding.pry
# puts "Done."
