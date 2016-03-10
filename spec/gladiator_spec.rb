require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do

  subject(:gladiator){Gladiator.new("Maximus","Sword")}
  subject(:gladiator2){Gladiator.new("Sanjaya", "Trident")}
  subject(:gladiator3){Gladiator.new("Patrick", "Gun")}

  describe "#name" do
    it "has a name" do
      expect(gladiator.name).to_not be_nil
      expect(gladiator.name).to eq("Maximus")
    end
    it "has a weapon" do
      expect(gladiator.weapon).to_not be_nil
      expect(gladiator.weapon).to eq("Sword")
    end

    describe "#check_weapon" do
      context "Unless gladiator name is maximus" do
        it "has an accepted weapon" do
          expect(gladiator.check_weapon).to be(nil)
        end
      end
      context "if gladiator name is not maximus" do
        it "has an accepted weapon" do
          expect(gladiator2.check_weapon).to be(true)
        end
        it "does not have an accepted weapon" do
          expect(gladiator3.check_weapon).to be(false)
        end
      end
    end
  end
end
