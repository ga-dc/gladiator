class Arena
  attr_reader :name
  attr_reader :gladiators
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    # [{name: "Alex", weapon: "sword"}, {name: "Maximus", weapon: "trident"}]
  end
  def add_gladiator(name)
    if @gladiators.length < 2
      @gladiators.push name
    end
  end
  def remove_gladiator(gladiator_name)
    @gladiators.delete_if {|i| i.name == gladiator_name}
  end
  def fight
    if @gladiators.length > 1
      if @gladiators[0].weapon == @gladiators.last.weapon
        @gladiators.delete_at(1)
        @gladiators.delete_at(0)
      elsif @gladiators[0].weapon == "Spear"
        if @gladiators[1].weapon == "Trident"
          # puts "#{@gladiators[0]} lost. Will you spare his life? Which way will your thumb sway? Put 'up' or 'down'."
          # kill = gets.chomp
          # if kill == "down"
            @gladiators.delete_at(0)
          # else
          # end
        else
          # puts "#{@gladiators[1]} lost. Will you spare his life? Which way will your thumb sway? Put 'up' or 'down'."
          # kill = gets.chomp
          # if kill == "down"
          @gladiators.delete_at(1)
        end
      elsif @gladiators[0].weapon == "Club"
        if @gladiators[1].weapon == "Trident"
          @gladiators.delete_at(1)
        else
          @gladiators.delete_at(0)
        end
      elsif @gladiators[0].weapon == "Trident"
        if @gladiators[1].weapon == "Club"
          @gladiators.delete_at(0)
        else
          @gladiators.delete_at(1)
        end
      end
    end
  end
end
# rome = Arena.new("Rome")
# rome.add_gladiator(alex)
# rome.add_gladiator(jared)
