class Arena
  attr_reader :gladiators
  attr_reader :name

  def initialize(name)
    @name = name.downcase.capitalize
    @gladiators = []
  end

  def name(new_name)
    self.name = new_name.downcase.capitalize
  end

  # def add_gladiator(gladiator)
  #   (self.gladiators.length < 2) ? self.gladiators.push(gladiator)  : puts ("Too many gladiators!");
  # end


end
