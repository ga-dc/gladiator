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

  describe "#delete_gladiator" do
    let(:morituri){Gladiator.new("Morituri","Club")}
    context "when the named gladiator is in the arena" do
      it "removes him" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(morituri)
        arena.delete_gladiator(morituri)
        expect(arena.gladiators).to_not include(morituri)
        expect(arena.gladiators.count).to eq(1)
      end
    end
    context "when the named gladiator is not in the empty arena" do
      it "does not change the arena" do
        arena.delete_gladiator(morituri)
        expect(arena.gladiators.count).to eq(0)
      end
    end
    context "when the named gladiator is not in the populated arena" do
      it "does not change the arena" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(ephates)
        arena.delete_gladiator(morituri)
        expect(arena.gladiators).to_not include(morituri)
        expect(arena.gladiators.count).to eq(2)
      end
    end
  end

  describe "#is_entetained?" do
    context "the arena is empty" do
      it "has an unhappy crowd" do
        expect(arena.is_entertained?).to eq(false)
      end
    end
    context "the arena has one gladiator who is not Maximus" do
      it "has an unhappy crowd" do
        arena.add_gladiator(ephates)
        expect(arena.is_entertained?).to eq(false)
      end
    end
    context "the arena has two gladiators and neither is  Maximus" do
      it "has an unhappy crowd" do
        arena.add_gladiator(ephates)
        arena.add_gladiator(cylodeus)
        expect(arena.is_entertained?).to eq(false)
      end
    end
    context "the arena has one gladiator who is Maximus" do
      it "has a happy crowd" do
        arena.add_gladiator(maximus)
        expect(arena.is_entertained?).to eq(true)
      end
    end
    context "the arena has two gladiators and one is  Maximus" do
      it "has a happy crowd" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(cylodeus)
        expect(arena.is_entertained?).to eq(true)
      end
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

    context "when Maximus is in the arena and would normally win" do
      let(:morituri){Gladiator.new("Morituri","Club")}
      it "kills his opponent" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(morituri)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators).to_not include(morituri)
      end
    end

    context "when Maximus is in the arena and would normally lose" do
      let(:morituri){Gladiator.new("Morituri","Trident")}
      it "kills his opponent" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(morituri)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators).to_not include(morituri)
      end
    end

    context "when Maximus is in the arena and would normally win" do
      let(:morituri){Gladiator.new("Morituri","Spear")}
      it "kills his opponent" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(morituri)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators).to_not include(morituri)
      end
    end

    context "when Spear v Trident" do
      let(:morituri){Gladiator.new("Morituri","Spear")}
      it "kills: spear when fighting trident" do
        arena.add_gladiator(morituri)
        arena.add_gladiator(bilcephalon)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when Club v Spear" do
      it "kills: club when fighting spear" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(maximus)
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
  end
end
