require_relative './gladiator'
class Arena
  attr_accessor :name, :gladiators, :winner
  # @gladiators = []
  def initialize in_name, gladiators = []
    @name = in_name.capitalize
    @gladiators = gladiators
    @winner = false
  end
  def add_gladiator(in_glad)
    if @gladiators.count < 2
      @gladiators << in_glad
    else
      puts "Only two gladiators allowed"
    end
  end
  def fight
    if @gladiators.count != 2
      puts "You have to have two gladiators for a fight."
      return
    end
    if @gladiators[0].weapon == @gladiators[1].weapon
      @gladiators = []
      puts "Both gladiators have been killed!"
      return
    end
    # else
    weapons_string = (@gladiators[0].weapon + @gladiators[1].weapon).downcase
    puts "Weapons string is #{weapons_string}"
    case weapons_string
    when "sridentspear", "spearclub", "clubtrident"
      @winner = @gladiators[0]
      @loser = @gladiators[1]
      @gladiators.delete @gladiators[1]
    when "tridentclub", "speartrident", "clubspear"
      @winner = @gladiators[1]
      @loser = @gladiators[0]
      @gladiators.delete @gladiators[0]
    else
      puts "We've got trouble"
    end
    puts "#{@winner.name} and his #{@winner.weapon} defeated #{@loser.name} and his #{@loser.weapon}"
  end
end
