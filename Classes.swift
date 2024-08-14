/*
Build a Pokédex by Bakhrom Usmanov
Pokémon is an international phenomenon that has taken the world by storm. Somewhere in a remote village called Pallet Town, there is a Pokémon Professor who is quietly studying these creatures.

We will let him introduce himself:

Hello, there! Welcome to the world of Pokémon. My name is Oak. People call me the Pokémon Professor.

This world is inhabited by creatures called Pokémon. For some people, Pokémon are pets. Others use them to fight. As for myself… I study pokémon as a profession.

There are over 896 Pokémons now in the wild, each with different characteristics such as name, types, weaknesses, and more. Help Professor Oak study them by categorizing them each into an electronic device — a Pokédex!

Write a Pokedex.swift program that stores different Pokémon using classes and inheritance.
*/

class Pokemon{
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]){
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo(){
    print(num)
    print(name)
    print(type)
    print(ability)
    print("==========================")
  }
}

class GigantamaxPokemon : Pokemon{
  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String){

  self.location = location

  super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo(){
    print(num)
    print(name)
    print(type)
    print(ability)
    print(location)
    print("==========================")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()
