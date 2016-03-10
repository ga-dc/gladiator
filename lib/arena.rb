# require 'pry'

class Arena

  attr_accessor :name, :gladiators, :fight

  def initialize name
    @name = name.capitalize
    @gladiators = []
    @fight = []
    @weapon = ["Spear", "Trident", "Club"]
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.count == 2
      if (@gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Trident")
        @gladiators.delete(@gladiators[0])
      elsif (@gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club")
        @gladiators.delete(@gladiators[1])
      elsif (@gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Club")
        @gladiators.delete(@gladiators[0])
      elsif (@gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Club")
        @gladiators = []
      end
    end
end

# @weapon.each_with_index do |weapon, i|
#   battle = {
#     weapon: weapon,
#     score: i}
#   end

# if (@gladiators[0].name == "Maximus" && @gladiators[1].name =="Bilcephalon")
#   @gladiators.delete(@gladiators[0])

end


class Gladiator
  # belongs_to :arena

  attr_accessor :name, :weapon

  def initialize name, weapon
    @name = name
    @weapon = weapon
  end

end


arena = Arena.new("megalopolis")
maximus = Gladiator.new("Maximus","Spear")
bilcephalon = Gladiator.new("Bilcephalon","Trident")
arena.add_gladiator(maximus)
arena.add_gladiator(bilcephalon)


# binding.pry
puts "arena.rb"
