class Arena

  #attr_accesor to have access to the read and write properties
  attr_accessor :name
  attr_accessor :gladiators

  #######################################
  #initialize Arena
  def initialize(name)

    #makes the 1st letter of the word capital
    @name = name.capitalize

    #establishing gladiators array
    @gladiators = []
  end #initialize end
  #######################################
  #adding gladiators to the arena
  def add_gladiator(gladiator)

    #no more gladiators can be added to array if the length is longer than 2
    if @gladiators.length < 2

      # pushes the gladiator into the gladiators array
      @gladiators << gladiator
    end #if end
  end #add gladiator end
  #######################################
  #making the gladiators fight
  def fight

    #do nothing
    if @gladiators.length == 0 || @gladiators.length == 1

      #fight!
    elsif @gladiators.length ==2



      # def compare (gladiator) #feed in the array
      #
      #   #set variable to the 2 gladiators weapons
      #   first_gladiator = gladiator[0]
      #   second_gladiator = gladiator[1]
      #
      #   puts first_gladiator.weapon
      #   puts second_gladiator.weapon
      #   #trident wins
      #   if (first_gladiator.weapon == "Trident") && (second_gladiator.weapon == "Spear")
      #     @gladiators.pop
      #     # gladiator.delete(second_gladiator)
      #     puts gladiator.last.name
      #
      #     #spear wins
      #   elsif (first_gladiator.weapon == "Spear") && (second_gladiator.weapon == "Club")
      #     gladiator.delete(second_gladiator)
      #
      #     #club wins
      #   elsif(first_gladiator.weapon == "Club") && (second_gladiator.weapon == "Trident")
      #     # gladiator.delete(second_gladiator)
      #     @gladiators.pop
      #
      #     puts gladiator.last.name
      #
      #     #no one wins
      #   elsif first_gladiator.weapon == second_gladiator.weapon
      #     gladiator.clear
      #   end # 3rd if end
      # end #compare end
      #
      # compare(@gladiators)
      #
      # if @gladiators.length == 2
      #   compare(@gladiators.reverse)
      # end
      # #call method the right way and then with the array reversed
      weapon1 = @gladiators[0].weapon
      weapon2 = @gladiators[1].weapon

      #if the 1st gladiator has a losing weapon
      die_first_gladiator = (weapon1 == "Spear" && weapon2 =="Trident") || (weapon1 == "Trident" && weapon2 =="Club")

      #if the 2nd gladiator has a losing weapon
      die_second_gladiator = (weapon1 == "Spear" && weapon2 =="Club")

      #remove the 1st element in array
      if die_first_gladiator
        @gladiators.shift

        #remove the last element in array
      elsif die_second_gladiator
        @gladiators.pop

        #remove all elements in array
      elsif  weapon1 ==  weapon2
        @gladiators.clear
        #######################################
        #endings
      end #2nd if end
    end #1st if end
  end #fight end
end #class end
