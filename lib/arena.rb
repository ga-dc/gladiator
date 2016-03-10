require "pry"

class Arena
  attr_accessor(:name, :gladiators, :vote, :losing_gladiators)

  def initialize(name)
      @name = name.capitalize
      @gladiators = []
  end

  def add_gladiator(gladiator)
    return if @gladiators.length >= 2
    @gladiators << gladiator
  end

  def remove_gladiator_name
    @gladiators.reject! { |gladiator| gladiator.name == "Hercules"} #.name refers to attribute of @gladiators, "gladiator" can say anything, it's like "i".
  end #end remove_gladiator_name

  def fight
    return if @gladiators.length <= 1

    @losing_gladiators = []
    puts "#{@gladiators.first.weapon} and #{@gladiators.last.weapon}"
    if @gladiators.any? { |gladiator| gladiator.name == "Maximus"}
    puts "Maximus won!"
    return

    elsif @gladiators.first.weapon === @gladiators.last.weapon
        @gladiators.clear

    elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
      puts "Hi"
        @losing_gladiators << @gladiators[0]
        #@gladiators.shift

    elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
        @gladiators.shift

    elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.shift

  #  else @gladiators.pop
    end
      # pop removes and keeps the last item in the array
      # shift removes and keeps first item in array
  end # end fight

  def vote
    puts "Vote thumbs down to eliminate the losing gladiator, thumbs up to eliminate the winner. Type 'down' or 'up'."

    @vote = gets.chomp
  end # end vote

  def entertained?
    if @gladiators.any? { |gladiator| gladiator.name == "Maximus"}
    puts "The crowd is entertained!"
    end # end entertained?
  end

end #end Arena

# play in sandbox to see if this works, you can do arena.fight to see if it works

puts "end pry"
