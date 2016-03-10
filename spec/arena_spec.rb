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
      can_add_gladiator(gladiator1)
      arena.add_gladiator(gladiator2)
      expect(arena.gladiators.count).to eq(2)
    end

    def can_fight(gladiator1, gladiator2)
        can_add_multiple_gladiators(gladiator1, gladiator2)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
    end
end

describe Arena do
  let(:arena){Arena.new("megalopolis")}
  let(:maximus){Gladiator.new("Maximus","Spear")}
  let(:carpophorus){Gladiator.new("Carpophorus", "Spear")}
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
        can_fight(carpophorus, bilcephalon)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when Maximus in arena" do
      it "makes Maximus win when he should lose" do
        can_fight(maximus, bilcephalon)
        expect(arena.gladiators.first).to eq(maximus)
      end
    end

    context "when Club v Spear" do
      it "kills: club when fighting spear" do
        can_fight(carpophorus, ephates)
        expect(arena.gladiators.first).to eq(carpophorus)
      end
    end

    context "when Trident v Club" do
      it "kills: trident when fighting club" do
        can_fight(bilcephalon, ephates)
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

  describe "#entertain" do
    include Helpers
    context "should entertain when" do
      it "has Maximus in the arena" do
        can_add_gladiator(maximus)
        expect(arena.entertained?).to eq(true)
      end
    end
  end
end
