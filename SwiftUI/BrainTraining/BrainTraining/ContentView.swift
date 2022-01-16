import SwiftUI

struct ContentView: View {
  private var rpcArr = ["Rock", "Paper", "Scissors"]
  @State private var rpc = "Tap a button"
  @State private var score = 0
  @State private var isWin = false
  @State private var round = 0
  @State private var showingAlert = false
  
  var body: some View {
    VStack {
      Text(rpc)
      
      HStack {
        Button("Rock") {
          round += 1
          
          if round == 10 {
            showingAlert = true
            return
          }
          
          showingAlert = false
          
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[1] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
            score -= 10
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .alert("Final score: \(score)", isPresented: $showingAlert) {
          Button("OK", role: .cancel) {
            round = 0
            score = 0
          }
        }
        
        Button("Paper") {
          round += 1
          
          if round == 10 {
            showingAlert = true
            return
          }
          
          showingAlert = false
          
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[2] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
            score -= 10
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .alert("Final score: \(score)", isPresented: $showingAlert) {
          Button("OK", role: .cancel) {
            round = 0
            score = 0
          }
        }
        
        Button("Scissors") {
          round += 1
          
          if round == 10 {
            showingAlert = true
            return
          }
          
          showingAlert = false
          
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          isWin = randomRpc == rpcArr[0] ? false : true
          if isWin {
            rpc = "\(randomRpc). You win"
            score += 10
          } else {
            rpc = "\(randomRpc). You lose"
            score -= 10
          }
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .alert("Final score: \(score)", isPresented: $showingAlert) {
          Button("OK", role: .cancel) {
            round = 0
            score = 0
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
