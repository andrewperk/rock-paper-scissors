func getUserChoice(_ userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

func getComputerChoice() -> String {
  let randomNumber: Int = Int.random(in: 0...2)

  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong. Try again."
  }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision: String = "It's a tie."

  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won."
      } else if compChoice == "scissors" {
        decision = "The user won!"
      }
    case "paper":
      if compChoice == "rock" {
        decision = "The user won!"
      } else if compChoice == "scissors" {
        decision = "The computer won."
      }
    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won."
      } else if compChoice == "paper" {
        decision = "The user won!"
      }
    default:
      decision = "Something wen't wrong. Try again."
  }

  return decision
}

let userChoice: String = getUserChoice("scissors")
let compChoice: String = getComputerChoice()

print("Rock, paper, scissors, shoot!")
print("------------------------------")
print("User: \(userChoice)")
print("Computer: \(compChoice)")
print(determineWinner(userChoice, compChoice))








