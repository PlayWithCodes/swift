import SwiftUI

struct ContentView: View {
  @State private var unitFrom: String = "meters"
  @State private var unitTo: String = "meters"
  @State private var enteredNumber: Double = 0
  @FocusState private var isFocused: Bool
  
  private var convertedNumber: String {
    var result: Double
    
    if unitFrom == unitTo {
      result = enteredNumber
      return result.formatted()
    }
    
    switch unitTo {
      case "meters":
        result = unitToMeters
      case "kilometers":
        result = unitToMeters / 1000
      case "feet":
        result = unitToMeters * 3.281
      case "yards":
        result = unitToMeters * 1.094
      case "miles":
        result = unitToMeters / 1609
      default:
        result = 0.0
    }
    
    return result.formatted()
  }
  
  private var unitToMeters: Double {
    var result: Double
    
    switch unitFrom {
      case "meters":
        result = enteredNumber
      case "kilometers":
        result = enteredNumber * 1000
      case "feet":
        result = enteredNumber / 3.2181
      case "yards":
        result = enteredNumber / 1.094
      case "miles":
        result = enteredNumber / 1609
      default:
        result = 0.0
    }
    
    return result
  }
  
  let units = ["meters", "kilometers", "feet", "yards", "miles"]
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          Picker("From", selection: $unitFrom) {
            ForEach(units, id: \.self) {
              Text("\($0)")
            }
          }
          .pickerStyle(.segmented)
        } header: {
          Text("From")
        }
        
        Section {
          Picker("To", selection: $unitTo) {
            ForEach(units, id: \.self) {
              Text("\($0)")
            }
          }
          .pickerStyle(.segmented)
        } header: {
          Text("To")
        }
        
        Section {
          TextField("Enter a number", value: $enteredNumber, format: .number)
            .keyboardType(.decimalPad)
            .focused($isFocused)
        } header: {
          Text("Enter a number")
        }
        
        Section {
          Text("\(convertedNumber)")
        } header: {
          Text("Result")
        }
      }
      .navigationTitle("Length converter")
      .toolbar {
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
