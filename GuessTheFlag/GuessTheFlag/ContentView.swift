//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sanket Kumar on 17/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
			VStack(spacing: 0) {
				Color.red
				Color.blue
			}
			
            Text("Your content")
				.foregroundColor(.secondary)
				.padding(50)
				.background(.ultraThinMaterial)
				.cornerRadius(4)
        }
		.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
