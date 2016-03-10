class Arena
    attr_accessor :name, :gladiators

    def initialize (name)
      @name = name.capitalize
      @gladiators = []
    end

    def add_gladiator (gladiator)
      @gladiators << gladiator
    # when gladiator.length < 2
    #   puts "hi"
    end

  # def fight(gladiator,weapon)
  #   fight = fight
  #     gladiator.name =
  #
  # # when
  # end
end
