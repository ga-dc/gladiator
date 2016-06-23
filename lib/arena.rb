

class Arena
  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    s = "Spear"
    t = "Trident"
    c = "Club"
    entertained = false
    thumbs_up = ""
    if @gladiators.length == 2
       glad1_weapon = @gladiators[0].weapon
       glad2_weapon = @gladiators[1].weapon
       if @gladiators[].name == "Maximus" || @gladiators[1].name == "Maximus"
          entertained = true
       end
       if glad1_weapon == t && glad2_weapon == s ||
          glad1_weapon == s && glad2_weapon == c ||
          glad1_weapon == c && glad2_weapon == t
          putts "Thumbs up? y or n"
          thumbs_up = gets.chomp
          if entertained || thumbs_up = "y"
             @gladiators.delete_at(0)
          else
            @gladiators.delete_at(1)
          end
        elsif
           glad2_weapon == t && glad1_weapon == s ||
           glad2_weapon == s && glad1_weapon == c ||
           glad2_weapon == c && glad1_weapon == t
           putts "Thumbs up? y or n"
           thumbs_up = gets.chomp
           if entertained || thumbs_up = "y"
              @gladiators.delete_at(1)
           else
              @gladiators.delete_at(0)
           end
        else
          @gladiators.shift(2)
        end
    end
    entertained? (entertained)
  end

  def entertained?(entertained)
       if entertained
         puts ("AMAZZZZING")
       end
  end

    def remove_gladiators (gname)
        @gladiators.delete_if {|name, value| value == gname}
    end
end



# * Add a method to remove gladiators from the arena by name
# * Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he wins.
# * Add a method to check to see if the crowd is entertained (`.entertained?`). The crowd is only entertained if Maximus is in the arena.
# * Before a losing gladiator is eliminated, the user should be prompted to put their thumbs up or down. If user votes down, the losing gladiator is removed. If the user votes up, the gladiator stays in the arena and his opponent is removed. (Life isn't fair.)
