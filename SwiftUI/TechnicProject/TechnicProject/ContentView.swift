import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Alpha")
      .font(.largeTitle)
      Text("Bravo")
      Text("Charlie")
      Text("Delta")
    }
    .font(.body)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
