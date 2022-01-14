//
//  ContentView.swift
//  WeSplit
//
//  Created by Sam Pomerantz on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    let students = ["Harry", "Hermione", "Ron"]
    var body: some View {
        NavigationView { //adds a navigation bar
            Form {
                Text("Forms can only have 10 children")
                Group {
                    Text("Hello, world!")
                    Text("Groups can allow for more than 10")
                }
                Section {
                    Text("Sections have a gap")
                }
                
                Button("Tap Count: \(tapCount)"){
                    tapCount += 1
                }
                
                Section{}
                
                Group {
                    TextField("Enter your name", text: $name)
                    Text("Hello, world!")
                }
                
                Section{}
                
                
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            
            }
            .navigationTitle("\(name) Navigation")
            //.navigationBarTitleDisplayMode(.inline) //make font smaller
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
