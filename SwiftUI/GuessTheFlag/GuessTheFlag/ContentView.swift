import SwiftUI

struct ContentView: View {
    var body: some View {
//      LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
      
//      LinearGradient(gradient: Gradient(stops: [
//        .init(color: .white, location: 0.45),
//        .init(color: .black, location: 0.55)
//      ]), startPoint: .top, endPoint: .bottom)
      
      AngularGradient(colors: [.red, .orange, .yellow, .green, .blue, .purple], center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
