/*
Whale Talk by Bakhrom Usmanov
Our goal is to take human phrases like "turpentine and turtles" and translate it to its “whale talk” equivalent: "UUEEIEEAUUEE".

There are a few simple rules for translating English text to “whale language”:

There are no consonants. Only vowels: "a", "e", "i", "o", "u".
The "u"s and "e"s are extra long, so we must double them in our program.
Once we have converted text to the whale language, the result is sung slowly, as is a custom in the ocean.
*/

let originalPhrase = "tUrpEntIne and turtles"
var whalePhrase = ""

let vowels: Set = ["a", "e", "i", "o", "u"]

for char in originalPhrase.lowercased(){
  if vowels.contains("\(char)"){
    switch char{
      case "e": whalePhrase.append("EE")
      case "u": whalePhrase.append("UU")
      default: whalePhrase.append(char)
    }
  }
}

print(whalePhrase.uppercased())

