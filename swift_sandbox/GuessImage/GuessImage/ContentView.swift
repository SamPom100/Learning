//
//  ContentView.swift
//  GuessImage
//
//  Created by Sam Pomerantz on 1/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    

    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 30){
                VStack {
                    Text("Tap the flag of")
                    .font(.subheadline.weight(.heavy))
                    .foregroundColor(.white)
                    Text(countries[correctAnswer])
                    .font(.largeTitle.weight(.semibold))
                    .foregroundColor(.white)
                }
                .padding()
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    }
                    label: {
                        Image(countries[number])
                        .renderingMode(.original)
                        .shadow(radius: 5)
                    }
                }
                
            }
            
        
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Score: \(score)")
                .foregroundColor(.white)
                .font(.title.bold())
        }

    }
    
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score = score + 1
        } else {
            scoreTitle = "Wrong"
        }

        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
