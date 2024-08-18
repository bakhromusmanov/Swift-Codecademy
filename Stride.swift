/*
Palindrome checker by Bakhrom Usmanov

A palindrome is a word, number, phrase, or other sequences of characters that remains the same when its characters are reversed, such as:

"madam"
"racecar"
"10801"
Sentence-length palindromes may be written when allowances are made for adjustments to capital letters, punctuation, and word dividers, such as:

"Was it a car or a cat I saw?"
"A man, a plan, a canal, Panama!"
Write a Palindrome.swift program that checks whether or not an array contains a palindrome.
*/

//reversed array without spaces, punctuation, lowercased should be same as array itself

var text = ["h", "e", "l", "l", "o"]
//["l", "e", "v", "e", "l"]
//["a", "n", "n", "a"]
var reversed = ""
var stringText = ""

//reverse text
for index in stride(from: text.count - 1, to: -1, by: -1){
  reversed += text[index]
}

//convert text to String
for i in 0..<text.count{
  stringText += text[i]
}

//check if we have palindrome
if stringText == reversed{
  print("We have a palindrome!")
} else {
  print("We don't have a palindrome")
}




