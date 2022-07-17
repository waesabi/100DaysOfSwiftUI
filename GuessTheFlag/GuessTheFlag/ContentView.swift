//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sanket Kumar on 17/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack(spacing: 16) {
			Button("Button 1") { }
				.buttonStyle(.bordered)
			
			Button("Button 2", role: .destructive) { }
				.buttonStyle(.bordered)
			
			Button("Button 3") { }
				.buttonStyle(.borderedProminent)
				.tint(.mint)
			
			Button("Button 4", role: .destructive) { }
				.buttonStyle(.borderedProminent)
			
			Button {
				print("Edit is tapped")
			} label: {
				Image(systemName: "pencil")
			}
			
			Button {
				print("Edit is tapped")
			} label: {
				Label("Edit", systemImage: "pencil")
			}
		}
    }
	
	func delete() {
		print("Delete done.")
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
