import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
