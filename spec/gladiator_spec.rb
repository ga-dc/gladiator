require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do

  before (:all) do
    @gladiator = Gladiator.new("Maximus","Spear")
  end
  describe "#name" do
    it "has a name" do
      expect(@gladiator.name).to_not be_nil
      expect(@gladiator.name).to be_a(String)
    end
    it "has a weapon" do
      expect(@gladiator.weapon).to_not be_nil
      expect(@gladiator.weapon).to eq("Spear")
    end
    it "weapon is valid" do
      expect(@gladiator.ok_weapons).to include(@gladiator.weapon)
    end
  end
end
