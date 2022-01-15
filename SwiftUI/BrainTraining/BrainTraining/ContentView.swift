import SwiftUI

struct ContentView: View {
  private var rpcArr = ["Rock", "Paper", "Scissors"]
  @State private var rpc = "Tap a button"
  
  var body: some View {
    VStack {
      Text(rpc)
      
      HStack {
        Button("Rock") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          rpc = randomRpc == rpcArr[1] ? "\(randomRpc). You lose" : "\(randomRpc). You win"
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        
        Button("Paper") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          rpc = randomRpc == rpcArr[2] ? "\(randomRpc). You lose" : "\(randomRpc). You win"
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        
        Button("Scissors") {
          let randomRpc = rpcArr[Int.random(in: 0...2)]
          rpc = randomRpc == rpcArr[0] ? "\(randomRpc). You lose" : "\(randomRpc). You win"
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
