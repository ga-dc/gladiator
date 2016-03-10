require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

require 'spec_helper'
require './lib/arena'
require './lib/gladiator'

module Helpers
    def can_add_gladiator(gladiator)
      arena.add_gladiator(gladiator)
      expect(arena.gladiators.count).to eq(1)
    end

    def can_add_multiple_gladiators(gladiator1, gladiator2)
      arena.add_gladiator(gladiator1)
      arena.add_gladiator(gladiator2)
      expect(arena.gladiators.count).to eq(2)
    end
end

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
    include Helpers
    it "adds a gladiator to the arena" do
      can_add_gladiator maximus
    end
    it "can add multiple gladiators" do
      can_add_multiple_gladiators maximus, bilcephalon
    end
    it "does not have more than two gladiators at once" do
      arena.add_gladiator(maximus)
      arena.add_gladiator(bilcephalon)
      arena.add_gladiator(ephates)
      expect(arena.gladiators).to_not include(ephates)
      expect(arena.gladiators.count).to eq(2)
    end
  end

  describe "#remove gladiator" do
    include Helpers
    it "can remove gladiator" do
        can_add_gladiator(maximus)
        arena.remove_gladiator(maximus.name)
        expect(arena.gladiators.count).to eq(0)
    end

    it "can remove gladiator of multiple gladiators" do
      can_add_multiple_gladiators(maximus, bilcephalon)
      arena.remove_gladiator(maximus.name)
      expect(arena.gladiators.count).to eq(1)
      expect(arena.gladiators[0]).to eq(bilcephalon)
    end
  end

  describe "#fight" do
    include Helpers
    context "when there are no gladiators" do
      it "does nothing" do
        arena.fight
        expect(arena.gladiators.count).to eq(0)
      end
    end

    context "when there is one gladiator" do
      it "does nothing" do
        can_add_gladiator(maximus)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
      end
    end

    context "when Spear v Trident" do
      it "kills: spear when fighting trident" do
        can_add_multiple_gladiators(maximus, bilcephalon)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when Club v Spear" do
      it "kills: club when fighting spear" do
        can_add_multiple_gladiators(maximus, ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(maximus)
      end
    end

    context "when Trident v Club" do
      it "kills: trident when fighting club" do
        can_add_multiple_gladiators(bilcephalon, ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(ephates)
      end
    end

    context "when same Weapons" do
      it "kills: both if their weapons are the same" do
        can_add_multiple_gladiators(ephates, cylodeus)
        arena.fight
        expect(arena.gladiators.count).to eq(0)
      end
    end
  end
end
