# RSpec Gladiator Arena

The Emperor has commissioned you to build a Gladiator Arena.

## How to do this assignment

The provided index.html file will be useful for testing out your code.

## Part 1 - The Gladiator

Create a `gladiator` class that has the following properties:

* a `name`
* a `weapon` (one of Spear, Club, Trident)

```js
var max = new Gladiator("Maximus","Trident")
```

### Bonus

How could you prevent creating Gladiators with a different weapon?

e.g. `new Gladiator("Taco")` throws an error.

## Part 2 - The Arena

Create an `Arena` class that meets the following conditions:

### An arena has a name

```js
var colosseum = new Arena("Colosseum")
console.log(colosseum.name) // => Colosseum
```
### The name should be capitalized

```js
var colosseum = new Arena("megalopolis")
console.log(colosseum.name) // => Megalopolis
```

### An arena can have gladiators

```js
var colosseum = new Arena("Colosseum")
console.log(colosseum.gladiators) // => []
```

### You can add a gladiator to the arena


```js
var max = new Gladiator("Maximus","Trident")
var colosseum = new Arena("Colosseum")
colosseum.addGladiator(max)
console.log(colosseum.gladiators) // => [Gladiator]
```

### The arena should never have more than 2 gladiators in it at a time

```js
var max = new Gladiator("Maximus","Trident")
var titus = new Gladiator("Titus","Sword")
var andronicus = new Gladiator("Andronicus","Sword")
var colosseum = new Arena("Colosseum")
colosseum.addGladiator(max)
colosseum.addGladiator(titus)
colosseum.addGladiator(andronicus)
console.log(colosseum.gladiators.length) // => 2
```

### If there are two gladiators in the arena, you can call a fight method that results in the elimination of one of the gladiators from the arena.

  * Winning conditions:
    * Trident beats Spear
    * Spear beats Club
    * Club beats Trident
    * If the two gladiators have the same weapon, they are both eliminated.

```js
var max = new Gladiator("Maximus","Trident")
var titus = new Gladiator("Titus","Spear")
var colosseum = new Arena("Colosseum")
colosseum.addGladiator(max)
colosseum.addGladiator(titus)
colosseum.fight()
console.log(colosseum.gladiators) // => [max]
```

## Double Bonus!

* Add a method to remove gladiators from the arena by name
* Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he wins.
* Add a method to check to see if the crowd is entertained (`.entertained?`). The crowd is only entertained if Maximus is in the arena.
* Before a losing gladiator is eliminated, the user should be prompted to put their thumbs up or down. If user votes down, the losing gladiator is removed. If the user votes up, the gladiator stays in the arena and his opponent is removed. (Life isn't fair.)
