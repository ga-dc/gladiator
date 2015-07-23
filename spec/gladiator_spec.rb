require 'spec_helper'
require_relative '../lib/gladiator'



describe Gladiator do

  subject(:gladiator){Gladiator.new("Maximus","Sword")}

  describe Gladiator do
    it "has a name" do
      expect(gladiator.name).to_not be_nil
      expect(gladiator.name).to eq("Maximus")
    end
    it "has a weapon" do
      expect(gladiator.weapon).to_not be_nil
      expect(gladiator.weapon).to eq("Sword")
    end

    it "accepts an array of Gladiators" do
  arena.add_gladiator([Gladiator.new("Herman","spear"), Gladiator.new("Bob","club")])
  expect(arena.gladiators.count).to eq(2)
end

it "accepts a single Gladiator" do
  arena.add_gladiator(Gladiator.new("Bilbo","trident"))
  expect(arena.gladiators.count).to eq(1)
end

it "accepts a name and a weapon" do
  arena.add_gladiator("Hogar", "club")
  expect(arena.gladiators.count).to eq(1)
end

it "rejects non-gladiators" do
  arena.add_gladiator(123)
  expect(arena.gladiators.count).to eq(0)
end

it "has no more than 2 gladiators" do
  arena.add_gladiator("A","club")
  arena.add_gladiator("B","club")
  arena.add_gladiator("C","club")
  expect(arena.gladiators.count).to eq(2)
end



  end
end
