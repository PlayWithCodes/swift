import SwiftUI

struct ContentView: View {
  var motto1: some View {
    Text("Draco")
  }
  
  var motto2 = Text("nunquam titllandus")
  
  @ViewBuilder var spells: some View {
    Group {
      Text("Lumos")
      Text("Obliviate")
    }
  }
  
  var body: some View {
    VStack {
      spells
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
