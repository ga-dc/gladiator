require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

=begin
An arena has a name
  The name should be capitalized
An arena can have gladiators
You can add a gladiator to the arena
  The arena should never have more than 2 gladiators in it at a time
If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.
  Winning conditions:
    Trident beats Spear
    Spear beats Club
    Club beats Trident
    If the two gladiators have the same weapon, they are both eliminated.
=end

describe Arena do
  # Create an arana.
  let(:arena) { Arena.new("suzuka circuit") }

  # Create gladiators with different weapons.
  let(:spear_1) { Gladiator.new("spear_1", "spear") }
  let(:spear_2) { Gladiator.new("spear_2", "spear") }
  let(:club_1) { Gladiator.new("club_1", "club") }
  let(:trident_1) { Gladiator.new("trident_1", "trident") }

  it "has a name that is capitalized" do
    expect(arena.name).to eq "Suzuka circuit"
  end
  it "can have gladiators" do
    expect(arena.gladiators).to_not be_nil
  end

  describe "#add_gladiator" do
    context "when it has 0..1 gladiator" do
      it "can add gladiators" do
        expect(arena.gladiators.count).to be(0)
        arena.add_gladiator spear_1
        expect(arena.gladiators.count).to be(1)
        arena.add_gladiator club_1
        expect(arena.gladiators.count).to be(2)
      end
    end
    context "when it has 2 gladiators" do
      it "cannot add gladiators" do
        arena.add_gladiator spear_1
        arena.add_gladiator spear_2
        expect(arena.gladiators.count).to be(2)
        expect {
          arena.add_gladiator spear_1
        }.to_not change { arena.gladiators.count }
      end
    end
  end

  describe "#fight" do
    context "when it has 0..1 gladiator" do
      it "does nothing on gladiators" do
        expect(arena.gladiators.count).to be(0)
        expect { arena.fight }.to_not change { arena.gladiators.count }
        arena.add_gladiator spear_1
        expect(arena.gladiators.count).to be(1)
        expect { arena.fight }.to_not change { arena.gladiators.count }
      end
    end
    context "when it has 2 gladiators" do
      it "removes loser(s) from the list" do
        arena.add_gladiator spear_1
        arena.add_gladiator club_1
        expect(arena.gladiators.count).to be(2)
        arena.fight
        expect(arena.gladiators).to eq [spear_1]
      end
    end
  end

  describe "#determine_winner" do
    context "if the two gladiators have the same weapon" do
      it "returns nil" do
        arena.add_gladiator spear_1
        arena.add_gladiator spear_2
        expect(arena.determine_winner).to be_nil
      end
    end
    context "spear vs club" do
      it "spear wins" do
        arena.add_gladiator spear_1
        arena.add_gladiator club_1
        expect(arena.determine_winner).to eq spear_1
      end
    end
    context "spear vs trident" do
      it "trident wins" do
        arena.add_gladiator spear_1
        arena.add_gladiator trident_1
        expect(arena.determine_winner).to eq trident_1
      end
    end
    context "club vs trident" do
      it "club wins" do
        arena.add_gladiator club_1
        arena.add_gladiator trident_1
        expect(arena.determine_winner).to eq club_1
      end
    end
    context "club vs spear" do
      it "spear wins" do
        arena.add_gladiator club_1
        arena.add_gladiator spear_1
        expect(arena.determine_winner).to eq spear_1
      end
    end
    context "trident vs spear" do
      it "trident wins" do
        arena.add_gladiator trident_1
        arena.add_gladiator spear_1
        expect(arena.determine_winner).to eq trident_1
      end
    end
    context "trident vs club" do
      it "club wins" do
        arena.add_gladiator trident_1
        arena.add_gladiator club_1
        expect(arena.determine_winner).to eq club_1
      end
    end
  end
end
