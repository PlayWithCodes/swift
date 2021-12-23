import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        VStack(spacing: 0) {
          Color.red
          Color.blue
        }
        
        Text("Your content")
          .padding(50)
          .foregroundStyle(.secondary)
          .background(.ultraThinMaterial)
      }
      .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
