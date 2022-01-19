import SwiftUI

enum RockPaperScissors {
  case rock
  case paper
  case scissors
}

struct GameMachine {
  static var count = 0
  static var score = 0
  static var gameResult = "Tap a button"
  
  static func countUp() {
    count += 1
  }
  
  static func scoreUp() {
    score += 10
  }
  
  static func scoreDown() {
    score -= 10
  }
  
  static func runRpc(userChoice: RockPaperScissors) {
    let computerRpc = Int.random(in: 0...2)
    var computerChoice = RockPaperScissors.rock
    
    countUp()
    
    switch computerRpc {
      case 1:
        computerChoice = RockPaperScissors.paper
      case 2:
        computerChoice = RockPaperScissors.scissors
      default:
        computerChoice = RockPaperScissors.rock
    }
    
    if computerChoice == userChoice {
      gameResult = "draw"
      return
    }
    
    switch userChoice {
      case RockPaperScissors.rock:
        setGameResult(computerChoice: computerChoice, rpc: RockPaperScissors.scissors)
      case RockPaperScissors.paper:
        setGameResult(computerChoice: computerChoice, rpc: RockPaperScissors.rock)
      case RockPaperScissors.scissors:
        setGameResult(computerChoice: computerChoice, rpc: RockPaperScissors.paper)
    }
  }
  
  static func setGameResult(computerChoice: RockPaperScissors, rpc: RockPaperScissors) {
    if computerChoice == rpc {
      gameResult = "You win"
      GameMachine.scoreUp()
    } else {
      gameResult = "You lose"
      GameMachine.scoreDown()
    }
  }
  
  static func isGameEnded() -> Bool {
    return count == 10 ? true : false
  }
  
  static func reset() {
    count = 0
    score = 0
  }
}

struct RpcButton: View {
  var buttonName: String
  var userChoice: RockPaperScissors
  @State private var showingAlert = false
  
  var body: some View {
    Button(buttonName) {
      GameMachine.runRpc(userChoice: userChoice)
      showingAlert = GameMachine.isGameEnded()
    }
    .padding()
    .background(.blue)
    .foregroundColor(.white)
    .clipShape(Capsule())
    .alert("Final score: \(GameMachine.score)", isPresented: $showingAlert) {
      Button("OK", role: .cancel) {
        GameMachine.reset()
      }
    }
  }
}

struct ContentView: View {
  var body: some View {
    VStack {
      Text(GameMachine.gameResult)
      
      HStack {
        RpcButton(buttonName: "Rock", userChoice: RockPaperScissors.rock)
        
        RpcButton(buttonName: "Paper", userChoice: RockPaperScissors.paper)
        
        RpcButton(buttonName: "Scissors", userChoice: RockPaperScissors.scissors)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
