require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

require 'spec_helper'
require './lib/arena'
require './lib/gladiator'

describe Arena do
  let(:arena){Arena.new("megalopolis")}
  let(:movius){Gladiator.new("Movius","Spear")}
  let(:bilcephalon){Gladiator.new("Bilcephalon","Trident")}
  let(:ephates){Gladiator.new("Ephates","Club")}
  let(:cylodeus){Gladiator.new("Cylodeus","Club")}
  let(:maximus){Gladiator.new("Maximus","Sword")}

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
      arena.add_gladiator(movius)
      expect(arena.gladiators.count).to eq(1)
    end
    it "can add multiple gladiators" do
      arena.add_gladiator(movius)
      arena.add_gladiator(bilcephalon)
      expect(arena.gladiators.count).to eq(2)
    end
    it "does not have more than two gladiators at once" do
      arena.add_gladiator(movius)
      arena.add_gladiator(bilcephalon)
      arena.add_gladiator(ephates)
      expect(arena.gladiators).to_not include(ephates)
      expect(arena.gladiators.count).to eq(2)
    end
  end

  describe "#remove_gladiator" do
    it "removes named player from the arena" do
      arena.add_gladiator(movius)
      arena.add_gladiator(bilcephalon)
      arena.remove_gladiator("Movius")
      expect(arena.gladiators).to_not include(movius)
      expect(arena.gladiators.count).to eq(1)
    end
  end

  describe "#entertained?" do
    it "Maximus in arena: crowd is entertained" do
      arena.add_gladiator(maximus)
      arena.add_gladiator(bilcephalon)
      arena.entertained?
      expect(arena.entertained?).to eq(true)
    end
    it "Maximus not in area: crowd is not entertained" do
      arena.add_gladiator(movius)
      arena.add_gladiator(bilcephalon)
      arena.entertained?
      expect(arena.entertained?).to eq(false)
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
        arena.add_gladiator(movius)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
      end
    end

    context "when Maximus is in arena" do
      it "Maximus wins and other player killed" do
        arena.add_gladiator(maximus)
        arena.add_gladiator(bilcephalon)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(maximus)
      end
    end

    context "when Spear v Trident" do
      it "kills: spear when fighting trident" do
        arena.add_gladiator(movius)
        arena.add_gladiator(bilcephalon)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators[0]).to eq(bilcephalon)
      end
    end

    context "when Club v Spear" do
      it "kills: club when fighting spear" do
        arena.add_gladiator(movius)
        arena.add_gladiator(ephates)
        arena.fight
        expect(arena.gladiators.count).to eq(1)
        expect(arena.gladiators.first).to eq(movius)
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
