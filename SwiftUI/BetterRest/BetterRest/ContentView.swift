import SwiftUI

struct ContentView: View {
  @State private var wakeUp = Date.now
  
  var body: some View {
    //Text(Date.now, format: .dateTime.day().month().year())
    //Text(Date.now.formatted(date: .long, time: .shortened))
    Text(Date.now.formatted(date: .long, time: .omitted))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
