#require "pry"

class Arena

  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name
    @gladiators = []
  end

  def add_gladiator(gladiator)
    @gladiators << gladiator
  end

  # def capitalize
  #   puts "#{@name.capitalize}"
  # end

end

megalopolis = Arena.new("megalopolis")
maximus = Gladiator.new("Maximus", "Sword")

# binding.pry
# puts "Done."
