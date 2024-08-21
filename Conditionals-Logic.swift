/*
Magic 8-Ball by Bakhrom Usmanov
The Magic 8-Ball is a popular toy developed in the 1950s for fortune-telling or advice seeking.

In this project, you’ll hone your conditional skills by creating a program that can answer any “Yes” or “No” question with a different fortune each time.
*/

var playerName = "Bakhrom"
var playerQuestion = "Will I master iOS Developepment soon?"

var randomNumber = Int.random(in: 1...9)
let eightBall: String

switch randomNumber{
  case 1: eightBall = "Yes - definitely"
  case 2: eightBall = "It is decidedly so"
  case 3: eightBall = "Without a doubt"
  case 4: eightBall = "Reply hazy, try again"
  case 5: eightBall = "Ask again later"
  case 6: eightBall = "Better not tell you now"
  case 7: eightBall = "My sources say no"
  case 8: eightBall = "Outlook not so good"
  case 9: eightBall = "Very doubtful"
  default: eightBall = "Error"
}

playerName.isEmpty ? print("\(playerQuestion)") : print("\(playerName) asks: \(playerQuestion)")
print("Magic 8 Ball's answer: \(eightBall)")
