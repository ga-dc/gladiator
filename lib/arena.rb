require 'gladiator.rb'
require 'pry'

class Arena
  attr_reader :name
  attr_accessor :gladiators

  def initialize(new_name)
    @name = new_name.capitalize!#this isn't orking returning nil
    @gladiators = []
    @gladiator_count = 0
  end

  def add_gladiator(new_gladiator, *others)
      @gladiators.push(new_gladiator).push(*others)
      @gladiator_count+=1
  end


end
