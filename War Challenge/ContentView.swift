//
//  ContentView.swift
//  War Challenge
//
//  Created by GPS Dev on 3/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
	var body: some View {
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
			}//HStack
			Spacer()
            Button(action: {
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                //update the cards
                playerCard = "card\(playerRand)"
                cpuCard = "card\(cpuRand)"
                
                //update the score
                if playerRand > cpuRand {
                    playerScore += 1
                }
                else if cpuRand > playerRand {
                    cpuScore += 1
                }
            }, label: {
                Image("dealbutton")
            })
			Spacer()
			HStack {
				Spacer()
				VStack {
					Text("Player")
						.font(.headline)
					Text(String(playerScore))
						.padding()
						.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				}//VStack
				Spacer()
				VStack {
					Text("CPU")
						.font(.headline)
					Text(String(cpuScore))
						.padding()
						.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				}//VStack
				Spacer()
			}//HStack
			.foregroundColor(.white)
			Spacer()
		} //VStack
		.background(Image("background"))
		.ignoresSafeArea()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
