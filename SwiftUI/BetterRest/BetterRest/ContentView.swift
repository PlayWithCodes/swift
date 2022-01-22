import SwiftUI

struct ContentView: View {
  @State private var wakeUp = Date.now
  
  var body: some View {
    DatePicker("Please enter a time", selection: $wakeUp, in: Date.now...)
    //DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
      //.labelsHidden()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
