class Arena
  attr_accessor :name, :gladiators

  def initialize (name)

    @name = name.capitalize
    @gladiators = []


  end

  def add_gladiator (name)
    if @gladiators.length < 2
     @gladiators << name
    else
      "You have 2 Gladiators!"
    end
  end

  def fight
    # if gladiator =0 then action in arena = nil
    if @gladiators.count == 0
      return nil
    end
    # if gladiator =1 then action in arena =nil
    if @gladiators.count == 1
      return nil
    end

  end



  
end
