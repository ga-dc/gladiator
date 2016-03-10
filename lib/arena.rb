# require 'pry'

class Arena

  attr_accessor :name, :gladiators, :fight, :weapon

  def initialize name
    @name = name.capitalize
    @gladiators = []
    @fight = []
    # @weapon = ["Spear", "Trident", "Club"]
    @weapon = []
  end

  def add_gladiator gladiator
    if @gladiators.length < 2
      @gladiators.push(gladiator)
      @weapon.push(gladiator.weapon)
    end
  end

  def fight
    if @gladiators.count == 2
      if @weapon == (["Spear","Trident"] or ["Trident", "Spear"])
         @gladiators.delete(@gladiators[@weapon.index("Spear")])
      elsif @weapon == (["Spear","Club"] or ["Club", "Spear"])
        @gladiators.delete(@gladiators[@weapon.index("Club")])
      elsif @weapon == (["Trident","Club"] or ["Club", "Trident"])
        @gladiators.delete(@gladiators[@weapon.index("Trident")])
      elsif @weapon[0] == @weapon[1]
        @gladiators = []
      end
    end
  end

  def clear_gladiators name
      @gladiators.delete(@gladiators[@gladiators.index(name)])
  end


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
