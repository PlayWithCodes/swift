import SwiftUI

struct ContentView: View {
  var body: some View {
    Button("Hello, world!") {
      print(type(of: self.body))
      // ModifiedContent<ModifiedContent<Button<Text>, _BackgroundStyleModifier<Color>>, _FrameLayout>
    }
    .background(.red)
    .padding()
    .background(.blue)
    .padding()
    .background(.yellow)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
