require 'pry'

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
    if @gladiators.length == 2
      if @gladiators.include?('Trident') and @gladiators.include?('Spear')
        if @gladiator[0].include?('Trident')
          @gladiator.delete_at(1)

          puts "Hello"
        else
          @gladiator.delete_at(0)
        end
      end
    end
  end

end
# 
# maximus = Gladiator.new("Maximus","Spear")
# bilcephalon = Gladiator.new("Bilcephalon","Trident")

binding.pry
