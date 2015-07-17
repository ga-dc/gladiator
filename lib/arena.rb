class Arena
  def initialize (name, capital)
    @name = name
    @capital = capital
  end

  def name
    return @name
  end

  def capital
    return @capital.capitalize
  end

end
