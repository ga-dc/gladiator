class Arena
  def initialize (name)
    @name = name
  end

  def name
    name = @name.capitalize
    return name
  end
end
