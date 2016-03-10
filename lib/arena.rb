#require "pry"

class Arena# < ActiveRecord::Base

  #has_many :gladiator

  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

    # def capitalize(name)
    #   name = "#{@name.capitalize}"
    # end

  def add_gladiator(gladiator)
    @gladiators << gladiator
  end

end

megalopolis = Arena.new("Megalopolis")
maximus = Gladiator.new("Maximus", "Trident")

# binding.pry
# puts "Done."
