import SwiftUI

struct ContentView: View {
  private let people = ["Rinn", "Leia", "Luke", "Rey"]
  
  var body: some View {
    List {
      Section("Static 1") {
        Text("Static row 1")
        Text("Static row 2")
      }
      
      Section("People 2") {
        ForEach(people, id: \.self) {
          Text($0)
        }
      }
      
      Section("Static 3") {
        Text("Static row 3")
        Text("Static row 4")
      }
    }
    .listStyle(.grouped)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
