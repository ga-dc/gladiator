class Gladiator
  # belongs_to :arena

  attr_accessor :name, :weapon

  def initialize name, weapon
    @name = name
    @weapon = weapon
  end

end
