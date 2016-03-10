require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

require 'spec_helper'
require './lib/arena'
require './lib/gladiator'

describe Arena do
  let(:arena){Arena.new("megalopolis")}
  let(:maximus){Gladiator.new("Maximus","Spear")}
  let(:bilcephalon){Gladiator.new("Bilcephalon","Trident")}
  let(:ephates){Gladiator.new("Ephates","Club")}
  let(:cylodeus){Gladiator.new("Cylodeus","Club")}
  let(:bob){Gladiator.new("Bob", "Spear")}

  describe "#name" do
    it "has a name" do
      expect(arena.name).to_not be_nil
    end

    it "is always capitalized" do
      expect(arena.name).to eq("Megalopolis")
    end
  end

  describe "#gladiators" do
    it "starts empty" do
      expect(arena.gladiators).to eq([])
    end
  end

  describe "#add_gladiator" do

    it "adds a gladiator to the arena" do
      arena.add_gladiator(maximus)
      expect(arena.gladiators.count).to eq(1)
    end
    it "can add multiple gladiators" do
      arena.add_gladiator(maximus)
      arena.add_gladiator(bilcephalon)
      expect(arena.gladiators.count).to eq(2)
    end
    it "does not have more than two gladiators at once" do
      arena.add_gladiator(maximus)
      arena.add_gladiator(bilcephalon)
      arena.add_gladiator(ephates)
      expect(arena.gladiators).to_not include(ephates)
      expect(arena.gladiators.count).to eq(2)
    end
  end

  describe "#fight" do
    context "when there are no gladiators" do
      it "does nothing" do
        arena.fight
        expect(arena.gladiators.count).to eq(0)
      end
    end

    context "when there is one gladiator" do
      it "does nothing" do
        arena.add_gladiator(maximus)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
      end
    end

    context "when Spear v Trident" do
      it "kills: spear when fighting trident" do
        arena.add_gladiator(bob)
        arena.add_gladiator(bilcephalon)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when Club v Spear" do
      it "kills: club when fighting spear" do
        arena.add_gladiator(bob)
        arena.add_gladiator(ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(bob)
      end
    end

    context "when Trident v Club" do
      it "kills: trident when fighting club" do
        arena.add_gladiator(bilcephalon)
        arena.add_gladiator(ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(ephates)
      end
    end

    context "when same Weapons" do
      it "kills: both if their weapons are the same" do
        arena.add_gladiator(ephates)
        arena.add_gladiator(cylodeus)
        arena.fight
        expect(arena.gladiators.count).to eq(0)
      end
    end

    context "when Maximus is battling" do
      it "declares Maximus the winner" do
        arena.add_gladiator(bilcephalon)
        arena.add_gladiator(maximus)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(maximus)
      end
    end
  end

  describe "#remove_by_name" do
    context "when gladiator is present" do
      it "removes the gladiator from the arena" do
        arena.add_gladiator(ephates)
        arena.remove_by_name("Ephates")
        expect(arena.gladiators.count).to eq(0)
      end
    end

    context "when gladiator is not present" do
      it "does nothing when the gladiator is not in the arena" do
        arena.add_gladiator(ephates)
        arena.remove_by_name("Bob")
        expect(arena.gladiators.count).to eq(1)
      end
    end
  end

  describe "#entertained?" do
    context "when maximus is in the arena" do
      it "entertains the crowd" do
        arena.add_gladiator(bilcephalon)
        arena.add_gladiator(maximus)
        expect(arena.entertained?).to be(true)
      end
    end

    context "when maximus is not in the arena" do
      it "doesn't entertain the crowd" do
        arena.add_gladiator(bilcephalon)
        arena.add_gladiator(bob)
        expect(arena.entertained?).to be(false)
      end
    end
  end

  describe "#life_isnt_fair" do
    context "when the audience thumbs up" do
      it "removes the losing gladiator" do
        arena.add_gladiator(bob)
        arena.add_gladiator(bilcephalon)
        arena.fight(false)
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when the audience thumbs down" do
      it "removes the winning gladiator" do
        arena.add_gladiator(bob)
        arena.add_gladiator(bilcephalon)
        arena.fight(true)
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bob)
      end
    end

  end

end
