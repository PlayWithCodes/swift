import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello")
      Text("World")
      Text("Goodbye")
      Text("World")
      // TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)>
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
