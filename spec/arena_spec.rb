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
