//
//  ContentView.swift
//  WeSplitREAL
//
//  Created by Sam Pomerantz on 1/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @State private var selectedStudent = "Harry"
    
    let tipPercentages = [10, 15, 20, 25, 0]
    let students = ["Harry", "Hermione", "Ron"]
    
    
    var body: some View {
        
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
                
                Picker("Number of people", selection: $numberOfPeople){
                    ForEach(2..<100){
                        Text("\($0) people")
                    }
                }
                
            }
            
            Section {
                Text(checkAmount, format: .currency(code: "USD"))
            }
            

       
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
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
