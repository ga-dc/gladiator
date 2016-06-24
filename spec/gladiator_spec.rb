require 'spec_helper'
require_relative '../lib/gladiator'
require_relative '../lib/arena'

=begin
A gladiator has a name
A gladiator has a weapon (one of Spear, Club, Trident)
=end

describe Gladiator do

  let(:masatoshi) { Gladiator.new("Masatoshi", "Spear") }

  it "has a name" do
    expect(masatoshi.name).to_not be_nil
    expect(masatoshi.name).to eq("Masatoshi")
  end

  it "has a weapon (one of Spear, Club, Trident)" do
    expect(masatoshi.weapon).to_not be_nil
    expect(masatoshi.weapon).to include("Spear")
    weapons = %w(Spear Club Trident)
    expect(weapons).to include(masatoshi.weapon)
  end
end
