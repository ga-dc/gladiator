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

describe Gladiator do
  it "has a name that is capitalized"
  it "can have gladiators"

  describe "#add_gladiator" do
    context "when it has 0..1 gladiator" do
      it "can add gladiators"
    end
    context "when it has 2 gladiators" do
      it "cannot add gladiators"
    end
  end

  describe "#fight" do
    context "when it has 0..1 gladiator" do
      it "does nothing on gladiators"
    end
    context "when it has 2 gladiators" do
      it "removes loser(s) from the list"
    end
  end

  describe "#determine_winner" do
    context "when the two gladiators have the same weapon" do
      it "returns nil"
    end
    context "if spear vs" do
      context "club" do
        it "spear wins"
      end
      context "trident" do
        it "trident wins"
      end
    end
    context "if club vs" do
      context "trident" do
        it "club wins"
      end
      context "spear" do
        it "spear wins"
      end
    end
    context "if trident vs" do
      context "spear" do
        it "trident wins"
      end
      context "club" do
        it "club wins"
      end
    end
  end
end
