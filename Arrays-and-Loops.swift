/*Caesar's Cipher by Bakhrom Usmanov
The Caesar’s Cipher is one of the simplest and most widely known encryption techniques. It is named after Julius Caesar because it was used by the Roman Empire to encode military secrets.

To use the cipher, draw the alphabet in a circle like so:

Alphabet with letters arranged in a circle
Take every letter of your message and shift it three places to the right. For example:

The letter a becomes d.
The letter b becomes e.
The letter c becomes f.
The word hello becomes khoor.
Shift 3 places to turn A to D
Write a CaesarCipher.swift program that encrypts a message by shifting each letter three places to the right.
*/

let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

let message = "abcdefghijklmnopqrstuvwxyz"
let lowerCaseMessage = message.lowercased()
var encryptedMessage: [Character] = []
let key = 3

for char in message{
  for i in 0..<alphabet.count{
      if alphabet[i] == char
      {
        encryptedMessage.append(alphabet[(i+key)%alphabet.count])
        break
      }
  }
}
print(encryptedMessage.reversed())



