# RSpec Gladiator Arena

The Emperor has commissioned you to build a Gladiator Arena. Your life depends on developing a well-thought-out arena, so you have been given tests to make sure
you build it well.

>Note: UXDI is having project presentations today from 10:30-12:30 and again from 1:30-3:30 in classroom 2. They will be 20 minutes each. Please check them out if you like, and be respectful to your fellow classmates!

## How to do this assignment

1. In the gladiator folder, run `bundle install` to make sure you have the right gems installed
2. Run `rspec` to run your tests. They should all fail.
3. Start with the `Gladiator` tests / class (see steps below)
4. Then do the `Arena` tests / class (see steps below)

For each individual test:

1. Read the error message.
2. Make the smallest change in your code to fix the error.
3. Run the test.
4. Repeat 1 - 3 until the test passes
5. Move to the next test.

### Note about the solution

The correct solution to this exercise is on the branch called **`solution`**.

## Specs
### Gladiator Spec

* A gladiator has a name
* A gladiator has a weapon (one of Spear, Club, Trident)

### Arena Spec

* An arena has a name
  * The name should be capitalized
* An arena can have gladiators
* You can add a gladiator to the arena
  * The arena should never have more than 2 gladiators in it at a time
* If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.
  * Winning conditions:
    * Trident beats Spear
    * Spear beats Club
    * Club beats Trident
    * If the two gladiators have the same weapon, they are both eliminated.


## Bonus

Note: No tests are provided for this bonus. You can either just add the
functionality w/o tests, or try to write the tests yourself.

* Add a method to remove gladiators from the arena by name
* Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he wins.
* Add a method to check to see if the crowd is entertained (`.entertained?`). The crowd is only entertained if Maximus is in the arena.
* Before a losing gladiator is eliminated, the user should be prompted to put their thumbs up or down. If user votes down, the losing gladiator is removed. If the user votes up, the gladiator stays in the arena and his opponent is removed. (Life isn't fair.)
