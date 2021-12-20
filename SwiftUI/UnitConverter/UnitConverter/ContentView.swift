import SwiftUI

struct ContentView: View {
  @State private var unitFrom: String = "meters"
  @State private var unitTo: String = "meters"
  @State private var enteredNumber: Double = 0
  @FocusState private var isFocused: Bool
  private var convertedNumber: Double {
    var result: Double
    
    if unitFrom == unitTo {
      result = enteredNumber
      return result
    }
    
    switch unitFrom {
      case "meters":
        switch unitTo {
          case "kilometers":
            result = enteredNumber / 1000
          case "feet":
            result = enteredNumber * 3.281
          case "yards":
            result = enteredNumber * 1.094
          case "miles":
            result = enteredNumber / 1609
          default:
            result = 0.0
        }
      case "kilometers":
        switch unitTo {
          case "meters":
            result = enteredNumber * 1000
          case "feet":
            result = enteredNumber * 3281
          case "yards":
            result = enteredNumber * 1094
          case "miles":
            result = enteredNumber / 1.609
          default:
            result = 0.0
        }
      case "feet":
        switch unitTo {
          case "meters":
            result = enteredNumber / 3.2181
          case "kilometers":
            result = enteredNumber / 3281
          case "yards":
            result = enteredNumber * 3
          case "miles":
            result = enteredNumber / 5280
          default:
            result = 0.0
        }
      case "yards":
        switch unitTo {
          case "meters":
            result = enteredNumber / 1.094
          case "kilometers":
            result = enteredNumber / 1094
          case "feet":
            result = enteredNumber * 3
          case "miles":
            result = enteredNumber / 1760
          default:
            result = 0.0
        }
      case "miles":
        switch unitTo {
          case "meters":
            result = enteredNumber / 1609
          case "kilometers":
            result = enteredNumber / 1.609
          case "feet":
            result = enteredNumber * 5280
          case "yards":
            result = enteredNumber * 1760
          default:
            result = 0.0
        }
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
