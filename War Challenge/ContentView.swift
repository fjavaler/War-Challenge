//
//  ContentView.swift
//  War Challenge
//
//  Created by GPS Dev on 3/8/21.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Spacer()
			Image("logo")
			Spacer()
			HStack {
				Spacer()
				Image("card3")
				Spacer()
				Image("card4")
				Spacer()
			}//HStack
			Spacer()
			Image("dealbutton")
			Spacer()
			HStack {
				Spacer()
				VStack {
					Text("Player")
						.font(.headline)
					Text("0")
						.padding()
						.font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
				}//VStack
				Spacer()
				VStack {
					Text("CPU")
						.font(.headline)
					Text("0")
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
