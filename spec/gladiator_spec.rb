require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do

  subject(:gladiator){Gladiator.new("Maximus","Spear")}

  describe "#name" do
    it "has a name" do
      expect(gladiator.name).to_not be_nil
      expect(gladiator.name).to eq("Maximus")
    end
    it "has a weapon" do
      expect(gladiator.weapon).to_not be_nil
      expect(gladiator.weapon).to eq("Spear")
    end
  end
end
