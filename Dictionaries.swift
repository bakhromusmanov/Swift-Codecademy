/*
Morse Decoder by Bakhrom Usmanov
Morse code, named after American artist Samuel Finley Breese Morse, is a method of telecommunication that visually encodes letters into unique combinations of dots . and dashes -:

Morse code has been used as a communication aide in aviation, radio, assistive technology, and more.

Here are a few rules to know when deciphering a Morse code message:

Each character is separated by a single space.
Each word is separated by three spaces.
Capitalization does not matter.
/*

var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
]

var morseText = "" //to encode the value

for element in englishText{
  if let morseChar = letterToMorse["\(element)"]{
    morseText.append(morseChar)
    morseText.append(" ")
  } else {
    morseText.append("  ")
  }
}

//print(morseText)

var decodedMessage = "" //to decode the message
var currMorse = ""
var morseCodeArray: [String] = []

for char in secretMessage{
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse{
      case "": 
        currMorse.append(" ")
      case " ": 
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)
//print(morseCodeArray)

var morseToLetter: [String:String] = [:]

for (letter, morseChar) in letterToMorse{
  morseToLetter[morseChar] = letter
}
//print(morseToLetter)

for morseValue in morseCodeArray{
  if let letterChar = morseToLetter[morseValue]{
    decodedMessage.append(letterChar)
  } else {
    decodedMessage.append(" ")
  }
}

print(decodedMessage)
