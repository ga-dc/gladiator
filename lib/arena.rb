class Arena
  attr_accessor :name, :gladiators
  def initialize name
    @name = name.capitalize
    @gladiators = []
  end
  def add_gladiator(gladiator)
    @gladiators << gladiator if @gladiators.length < 2
  end
  def fight
    if @gladiators.length > 1
      gladiator_weapon_one = @gladiators[0].weapon
      gladiator_weapon_two = @gladiators[1].weapon
      def kills(gladiator_weapon_one, gladiator_weapon_two)
        if gladiator_weapon_one == 'Spear' && gladiator_weapon_two == 'Trident'
          @gladiators.delete_at(0)
        elsif gladiator_weapon_one == 'Club' && gladiator_weapon_two == 'Spear'
          @gladiators.delete_at(0)
        elsif gladiator_weapon_one == 'Trident' && gladiator_weapon_two == 'Club'
          @gladiators.delete_at(0)
        elsif gladiator_weapon_two == 'Spear' && gladiator_weapon_one == 'Trident'
          @gladiators.delete_at(1)
        elsif gladiator_weapon_two == 'Club' && gladiator_weapon_one == 'Spear'
          @gladiators.delete_at(1)
        elsif gladiator_weapon_two == 'Trident' && gladiator_weapon_one == 'Club'
          @gladiators.delete_at(1)
        else gladiator_weapon_one === gladiator_weapon_two
          @gladiators = []
        end
      end
      kills(gladiator_weapon_one, gladiator_weapon_two)
    end
  end
end

# rspec ./spec/arena_spec.rb:69 # Arena#fight when Spear v Trident kills: spear when fighting trident
# rspec ./spec/arena_spec.rb:79 # Arena#fight when Club v Spear kills: club when fighting spear
# rspec ./spec/arena_spec.rb:89 # Arena#fight when Trident v Club kills: trident when fighting club
# rspec ./spec/arena_spec.rb:99 # Arena#fight when same Weapons kills: both if their weapons are the same
