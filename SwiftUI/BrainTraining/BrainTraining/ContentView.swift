import SwiftUI

struct ContentView: View {
  private var rpcArr = ["Rock", "Paper", "Scissors"]
  @State private var rpc = "Tap the play!!"
  
  var body: some View {
    VStack {
      Text(rpc)
      Button("Play") {
        rpc = rpcArr[Int.random(in: 0...2)]
      }
      .padding()
      .background(.blue)
      .foregroundColor(.white)
      .clipShape(Capsule())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
