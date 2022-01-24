//
//  ContentView.swift
//  CheckSplit_Real
//
//  Created by Sam Pomerantz on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    
    
    
    
    var body: some View {
        
        NavigationView {
        
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: "USD")).keyboardType(.decimalPad)
                }
                header: {
                    Text("Check Amount:")
                }
                
                Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                header: {
                    Text("Tip Percentage?")
                }

                Section {
                    Text(totalPerPerson, format: .currency(code: "USD"))
                }
                header: {
                    Text("Total Per Person:")
                }
                
            }
            .navigationTitle("Check Calc")
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
