/*
Rock, Paper, Scissors by Bakhrom Usmanov
Rock, paper, scissors is a classic two player hand game dating back to ancient China.

Here are its universal rules:

Rock destroys scissors
Scissors cut paper
Paper covers rock
Keeping these guidelines in mind, we’ll create a rock, paper, scissors program but with a modern twist - one of the players is a computer! 💻

rock, paper, scissors game

Our program will consist of 3 functions and utilize previously covered Swift concepts including if/else and switch statements to determine the winner amongst 2 players.
*/

func getUserChoice(userInput: String) -> String{
  switch userInput{
    case "rock", "paper", "scissors": return userInput
    default: return "You can only enter rock, paper, or scissors. Try again."
  }
}

func getComputerChoice() -> String{
  let randomNum = Int.random(in: 1...3)
  switch randomNum{
    case 1: return "rock"
    case 2: return "paper"
    case 3: return "scissors"
    default: return "Something went wrong"
  }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
    switch userChoice {
    case let x where x == compChoice:
        return "It's a tie"
    case "rock":
        return compChoice == "paper" ? "The computer won" : "The user won"
    case "paper":
        return compChoice == "scissors" ? "The computer won" : "The user won"
    case "scissors":
        return compChoice == "rock" ? "The computer won" : "The user won"
    default:
        return "Invalid \(userChoice) OR \(compChoice)"
    }
}

let userChoice = getUserChoice(userInput: "rock")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
