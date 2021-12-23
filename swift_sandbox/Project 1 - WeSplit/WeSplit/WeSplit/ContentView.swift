//
//  ContentView.swift
//  WeSplit
//
//  Created by Sam Pomerantz on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
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
            }
            .navigationTitle("Swift Navigation")
            //.navigationBarTitleDisplayMode(.inline) //make font smaller
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
