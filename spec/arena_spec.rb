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
        arena.add_gladiator(maximus)
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
