class Arena
  attr_accessor :name

  def initialize(name)
    @name = name.capitalize
  end

# 1 Arena name
# 2 Arena name is always capitalized
  def arena_name
    puts "#{@name}"
  end

end



# m = Arena.new("megalopolis")
