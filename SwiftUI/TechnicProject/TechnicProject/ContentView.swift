import SwiftUI

struct ContentView: View {
  @State private var textColor = false
  
  var body: some View {
    Button("Hellow, world!") {
      textColor.toggle()
    }
    .foregroundColor(textColor ? .red : .blue)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
