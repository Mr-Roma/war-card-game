//
//  ContentView.swift
//  war-card-game
//
//  Created by Romario Marcal on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                }label: {
                    Image("button")
                }
                
                Spacer()
            
                HStack {
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                        Text(String(playerScore)).font(.title)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                        Text(String(cpuScore)).font(.title)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                Spacer()
            }
                
        }
    }
    
    func deal() {
        //Randomnize the player card
        
        var playerCardValue=Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        //Randomnize the cpu's card
        
        var cpuCardValue = Int.random(in: 2...14)
        
        cpuCard = "card" + String(cpuCardValue)
        
        //Updare the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
