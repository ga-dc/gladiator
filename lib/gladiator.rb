# require 'pry'
require_relative './arena'
class Gladiator
  attr_accessor :name, :weapon

  def initialize(in_name, in_weapon)
    @name =  in_name.capitalize
    @weapon = in_weapon
  end
  # def name
  #   return @name
  # end
end

# binding.pry
