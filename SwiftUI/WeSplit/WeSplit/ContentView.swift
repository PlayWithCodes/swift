import SwiftUI

struct ContentView: View {
  @State private var count = 0
  @State private var name = ""
  let students = ["Harry", "Rob", "Bob"]
  @State private var selectedName = "Rob"
  @State private var checkAmount = 0.0
  @State private var numberOfPeople = 1
  @State private var selectedTip = 20
  let tips = [10, 15, 20, 25, 0]
  
  var totalPerPerson: Double {
    let peopleCount = Double(numberOfPeople + 2)
    let totalPerPerson = checkWithTip / peopleCount
    return totalPerPerson
  }
  
  var checkWithTip: Double {
    let calculatedTip = checkAmount / 100 * Double(selectedTip)
    return checkAmount + calculatedTip
  }

  @FocusState private var isFocused: Bool
  
  var currencyFormatter: FloatingPointFormatStyle<Double>.Currency {
    return FloatingPointFormatStyle<Double>.Currency.currency(code: Locale.current.currencyCode ?? "USD")
  }
  
  var body: some View {
    NavigationView {
      Form {
        Group {
          Button("Count: \(count)") {
            count += 1
          }
        }
        
        Section {
          TextField("Enter your name: ", text: $name)
          Text("Your name is \(name)")
        }
        
        Section {
          Picker("Select your student", selection: $selectedName) {
            ForEach(students, id: \.self) {
              Text($0)
            }
          }
        }
        
        Section {
          TextField("Amount", value: $checkAmount, format: currencyFormatter)
            .keyboardType(.decimalPad)
            .focused($isFocused)
          
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2..<100) {
              Text("\($0) of people")
            }
          }
        }
        
        Section {
          Picker("How much tip do you want to leave?", selection: $selectedTip) {
            ForEach(0..<101) {
              Text($0, format: .percent)
            }
          }
        } header: {
          Text("How much tip do you want to leave?")
        }
        
        Section {
          Text(totalPerPerson, format: currencyFormatter)
        } header: {
          Text("Amount per person")
        }
        
        Section {
          Text(checkWithTip, format: currencyFormatter)
            .foregroundColor(selectedTip == 0 ? .red : .blue)
        } header: {
          Text("Total amount")
        }
      }
      .navigationTitle("WeSplit")
      .toolbar() {
        ToolbarItemGroup(placement: .keyboard) {
          Spacer()
          
          Button("Done") {
            isFocused = false
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
