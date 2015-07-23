require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do

  subject(:gladiator){Gladiator.new("Maximus","Sword")}

  describe "#name" do
    if "has a name" do
      expect(gladiator.name).to_not be_nil
      expect(gladiator.name).to eq("Maximus")
    end
    if "has a weapon" do
      expect(gladiator.weapon).to_not be_nil
      expect(gladiator.weapon).to eq("Sword")
    end
  end
end
