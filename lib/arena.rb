# require 'pry'
require_relative 'gladiator'

class Arena

  attr_accessor :name, :gladiators, :battle, :audience_response

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
    @battle = []
    @gladiator_names = []
    @audience_response = ""
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.length == 2
      @battle = @gladiators.map do |gladiator|
        gladiator.weapon
      end

      @gladiator_names = @gladiators.map do |gladiator|
        gladiator.name
      end

      @battle.sort!

      puts "Do you want the winner to live or die? (Type up for live or down for die)"
      @audience_response = gets.chomp
      @audience_response.downcase!

      if @gladiator_names.include?("Maximus")
        if @audience_response == "up"
          @gladiators.delete_if{|gladiator| gladiator.name != "Maximus"}
        else
          @gladiators.delete_if{|gladiator| gladiator.name == "Maximus"}
        end
      elsif @battle == ["Spear", "Trident"]
        if @audience_response == "up"
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Spear"}
        else
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Trident"}
        end
      elsif @battle == ["Club", "Spear"]
        if @audience_response == "up"
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Club"}
        else
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Spear"}
        end
      elsif @battle == ["Club", "Trident"]
        if @audience_response == "up"
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Trident"}
        else
          @gladiators.delete_if{|gladiator| gladiator.weapon == "Club"}
        end
      else
        @gladiators.pop
        @gladiators.pop
      end
    end
  end

  def remove_gladiator(name)
    @gladiators.delete_if{|gladiator| gladiator.name == name}
  end

  def entertained?
    if @gladiator_names.include?("Maximus")
      return true
    else
      return false
    end
  end

end
#
# maximus = Gladiator.new("Caitlin","Trident")
# ephates = Gladiator.new("Ephates","Club")
# arena = Arena.new("megalopolis")
# arena.add_gladiator(maximus)
# arena.add_gladiator(ephates)
# arena.fight
#
# binding.pry
