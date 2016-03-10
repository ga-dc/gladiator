class Arena

  def initialize(name)
    @name = name
    @gladiators = []
  end

  def name
    @name.capitalize
  end

  def gladiators
    @gladiators
  end

  def add_gladiator(new_gladiator)
    if @gladiators.length < 2
      @gladiators.push new_gladiator
    end
  end

  def fight
    first = @gladiators.first
    last = @gladiators[1]


  end


  def fight
    weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }
    #I understand that each gladiator gets a weapon. I understand that weapon_switch is a hash but usually hashes use key and values, but this hash seems to be values and greater values. I would have created a gladiator 1 and 2.
    if @gladiators.count == 2
      #I understand that there can only be 2 gladiators at a time.
      if @gladiators.first.weapon == @gladiators.last.weapon
        #I believe these mean that the gladiators are assigned the first and last weapon in the hash.
        @gladiators.pop(2)
        #It also means that if they are assigned the same weapon, the gladiators are both elimiinated.
      elsif weapon_switch[@gladiators.first.weapon] == @gladiators.last.weapon
        #This is where I am lost because there now includes an array.
        @gladiators.delete_at(1)
        #I understand that this line eliminates the second gladiator.
      else
        @gladiators.delete_at(0)
        #I understand that this line eliminates the first gladiator.
      end
    end
  end

end

=begin pseudocode

/////arena cant have more than two gladiators in the arena/
  use if else statement and < 2/
  look at solution/look up .count/.count returns the number of arguments but the gladiators is not an array?/should gladiators be an array/gladiators are an array = @gladiators = []
  if gladiators.count < 2
    #puts
  elsif gladiators
    puts
  end

/////fight method/function/def fight/
  should eliminate one gladiator/
  in fight method/gladiator can choose a weapon
    winning conditions
      trident > spear
      spear > club
      club > trident
      if same weapon == they are both eliminated/use if else statement
  if first gladiator = trident and second gladiator uses spear/trident wins
    if first_gladiator = trident
      if second gladiator = spear
        trident > spear
    look at solution

=end
