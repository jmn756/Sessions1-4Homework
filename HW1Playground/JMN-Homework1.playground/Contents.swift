//Foundations II - iOS Development
//Joey Nessif
//06-04-15

//Homework #1
//Create a playground file with the following functionality:
//Create a base Pokemon class with properties/methods that all pokemon will need.
//Create 10 different Pokemon. 5 of these Pokemon must be evolutions of another Pokemon. See http://pokemondb.net/pokedex/all (Links to an external site.) for reference.
//Devise a way for one pokemon to damage another.

import UIKit

class Pokemon {
  var level = 1
  var health = 100
  var type = "None"
  
  
  func levelUp() {
    self.level++
  }
  
  init (startingLevel : Int) {
    self.level = startingLevel
  }
  
}

class grassPokeman : Pokemon {
  
  override init (startingLevel : Int) {
    super.init(startingLevel: startingLevel)
    self.type = "Grass"
  }
  
  func absorb(attackee: Pokemon) -> Int {
      return Int(attackee.health / 2)
  }
  
  func bulletSeed() {}
  func cottonGuard() {}

}

class waterPokeman : Pokemon {
  
  override init (startingLevel : Int) {
    super.init(startingLevel: startingLevel)
    self.type = "Water"
  }
  
  func aquaJet() {}
  func brine() {}
  func muddyWater() {}
  
  
}

class firePokeman : Pokemon {
  
  override init (startingLevel : Int) {
    super.init(startingLevel: startingLevel)
    self.type = "Fire"
  }
  
  func blastBurn() {}
  func eruption() {}
  func flameBurst() {}
  
}

class Torchic : firePokeman {
  
}

class Combusken : Torchic {
  
}

class Blaziken : Combusken {
  
}

class Psyduck : waterPokeman {
  
}

class Goldeen : waterPokeman {
  
}

class Sunflora : grassPokeman {
  
}

//write func to do something
//attack  



let myTorchic = Torchic(startingLevel: 1)

myTorchic.type

let myCombusken = Combusken(startingLevel: 17)
let myBlaziken = Blaziken(startingLevel: 37)









