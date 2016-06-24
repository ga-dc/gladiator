require_relative 'gladiator'

class Arena
  attr_accessor :name, :gladiators, :audience_response

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    @audience_response = ""
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
       @gladiators.push(gladiator)
    end
  end

  def fight

    weapons_array = ["Sword", "Club", "Trident", "Spear"]
    rand_weapons_array = weapons_array.shuffle

    maximus = Gladiator.new("Maximus", rand_weapons_array[0])
    ephates = Gladiator.new("Ephates", rand_weapons_array[1])
    bilcephalon = Gladiator.new("Bilcephalon", rand_weapons_array[2])

    gladiator_array = [maximus, ephates, bilcephalon]
    rand_gladiator_array = gladiator_array.shuffle
    add_rand_glad = add_gladiator(rand_gladiator_array[0])


    puts "A random gladiator with a random weapon will battle your gladiator of choice? Choose M for Maximus, E for Ephates or B for Bilcephalon?"
    @audience_response = gets.chomp
    @audience_response.downcase!

    if @audience_response == "m"
      add_gladiator(maximus)
      rand_gladiator_array -= [maximus]
      add_rand_glad
    elsif @audience_response == "e"
      add_gladiator(ephates)
      rand_gladiator_array -= [ephates]
      add_rand_glad
    elsif @audience_response == "b"
      add_gladiator(bilcephalon)
      rand_gladiator_array -= [bilcephalon]
      add_rand_glad
    else
    end

    puts "#{@gladiators[0].name} gets a #{@gladiators[1].weapon} and battles #{@gladiators[1].name}, who has a #{@gladiators[0].weapon}!"

    if @gladiators.length <= 1
    elsif @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Trident' || @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Spear' || @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Club'
       @gladiators.delete_at(0)
     elsif @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Spear' || @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Club' || @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Trident'
        @gladiators.delete_at(1)
      elsif @gladiators[0].weapon == 'Spear' && @gladiators[1].weapon == 'Sword' || @gladiators[0].weapon == 'Club' && @gladiators[1].weapon == 'Sword' || @gladiators[0].weapon == 'Trident' && @gladiators[1].weapon == 'Sword'
         @gladiators.delete_at(0)
       elsif @gladiators[0].weapon == 'Sword' && @gladiators[1].weapon == 'Spear' || @gladiators[0].weapon == 'Sword' && @gladiators[1].weapon == 'Club' || @gladiators[0].weapon == 'Sword' && @gladiators[1].weapon == 'Trident'
          @gladiators.delete_at(1)
        elsif @gladiators[0].weapon == @gladiators[1].weapon
           @gladiators.pop(2)
         else
           @gladiators.delete_at(1)
    end
    if @gladiators == []
      puts "Both have died"
    else
      puts "The winner is #{@gladiators[0].name}!"
    end
  end
end

arena = Arena.new("megalopolis")
arena.fight
