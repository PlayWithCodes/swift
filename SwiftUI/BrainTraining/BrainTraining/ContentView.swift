import SwiftUI

struct ContentView: View {
  private var rpcArr = ["Rock", "Paper", "Scissors"]
  @State private var rpc = "Tap a button"
  @State private var score = 0
  @State private var isWin = false
  
  var body: some View {
    VStack {
      Text(rpc)
      
      HStack {
        Button("Rock") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[1] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        
        Button("Paper") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[2] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        
        Button("Scissors") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[0] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
      }
      
      Text("Score: \(score)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
