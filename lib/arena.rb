class Arena

  attr_accessor :name, :gladiators

  def initialize(arena_name)
    @name = arena_name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.count < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.count == 2
      case @gladiators[0].weapon
      when "Trident"
        if @gladiators[1].weapon == "Trident"
          @gladiators.pop(2)
        elsif @gladiators[1].weapon == "Spear"
          @gladiators.delete_at(1)
        elsif @gladiators[1].weapon == "Club"
          @gladiators.delete_at(0)
        end
      when "Spear"
      	if @gladiators[1].weapon == "Spear"
      		@gladiators.pop(2)
      	elsif @gladiators[1].weapon == "Club"
      		@gladiators.delete_at(1)
      	elsif @gladiators[1].weapon == "Trident"
      		@gladiators.delete_at(0)
      	end
      when "Club"
      	if @gladiators[1].weapon == "Club"
      		@gladiators.pop(2)
      	elsif @gladiators[1].weapon == "Trident"
      		@gladiators.delete_at(1)
      	elsif @gladiators[1].weapon == "Spear"
      		@gladiators.delete_at(0)
      	end
      end
    end
  end
end
