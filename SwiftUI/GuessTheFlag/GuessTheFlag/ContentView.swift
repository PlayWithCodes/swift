import SwiftUI

struct FlagImage: View {
  var country: String
  
  var body: some View {
    Image(country)
      .renderingMode(.original)
      .clipShape(Capsule())
      .shadow(radius: 10)
  }
}

struct ContentView: View {
  @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria"].shuffled()
  @State private var correctAnswer = Int.random(in: 0...2)
  @State private var showingScore = false
  @State private var scoreTitle = ""
  @State private var score = 0
  @State private var questionCount = 0
  
  var body: some View {
    ZStack {
      RadialGradient(stops: [
        .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
        .init(color: Color(red: 0.66, green: 0.45, blue: 0.30), location: 0.3)
      ], center: .top, startRadius: 200, endRadius: 700)
        .ignoresSafeArea()
      
      VStack {
        Spacer()
        
        Text("Guess the flag")
          .font(.largeTitle.bold())
          .foregroundColor(Color(red: 0.76, green: 0.55, blue: 0.26))
        
        VStack(spacing: 15) {
          VStack {
            Text("Tap the flag of")
              .foregroundColor(.yellow)
              .font(.subheadline.weight(.heavy))
            
            Text(countries[correctAnswer])
              .font(.largeTitle.weight(.semibold))
          }
          
          ForEach(0..<3) { number in
            Button {
              flagTapped(number)
            } label: {
              FlagImage(country: countries[number])
            }
          }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
        Spacer()
        Spacer()
        
        Text("Your score is \(score)")
          .foregroundColor(.white)
          .font(.title.bold())
        
        Spacer()
      }
      .padding()
    }
    .alert(scoreTitle, isPresented: $showingScore) {
      if questionCount == 8 {
        Button("Restart", action: reset)
      } else {
        Button("Continue", action: askQuestion)
      }
    } message: {
      if questionCount == 8 {
        Text("Your FINAL score is \(score)")
      }
    }
  }
  
  func flagTapped(_ number: Int) {
    questionCount += 1
    
    if number == correctAnswer {
      scoreTitle = "Correct"
      score += 10
    } else {
      scoreTitle = "Wrong! That's the flag of \(countries[number])"
      score -= 10
    }
    
    showingScore = true
  }
  
  func askQuestion() {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
  }
  
  func reset() {
    questionCount = 0
    score = 0
    askQuestion()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
