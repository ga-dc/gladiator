# require "pry"

class Arena
  attr_accessor :name, :gladiators

  def initialize (name)
    @name = name[0].upcase + name[1..-1]
    @gladiators = []
  end

  def add_gladiator (gladName)
    @gladiators = @gladiators.push(gladName)
    @gladiators = @gladiators.first(2)
  end

  def announce
    return "#{@gladiators[0].name} armed with #{@gladiators[0].weapon} FIGHTS #{@gladiators[1].name} armed with #{@gladiators[1].weapon}!!!"
  end

  def fight
    if @gladiators.length == 0
      return "Your arena is empty, add gladiators"
    elsif @gladiators.length == 1
      return "#{@gladiators[0].name} needs an opponent, add a gladiator"
    elsif
      @gladiators[0].weapon == @gladiators[1].weapon
      announce
      @gladiators = []
      "Gladiators both die in glory"
    elsif
      ((@gladiators[0].weapon == "Trident" && @gladiators[1].weapon == "Spear") || (@gladiators[0].weapon == "Spear" && @gladiators[1].weapon == "Club")|| (@gladiators[0].weapon == "Club" && @gladiators[1].weapon == "Trident"))
      announce
      "#{@gladiators[0].name} kills #{@gladiators[1].name} in glorious combat"
      @gladiators.delete_at(1)
    else
      announce
      "#{@gladiators[1].name} kills #{@gladiators[0].name} in glorious combat"
      @gladiators.delete_at(0)
    end
  end

end

a = Arena.new("lostTemple")

# binding.pry
# puts "end"
