//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sanket Kumar on 17/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//		LinearGradient(
//			gradient: Gradient(colors: [.white, .blue]),
//			startPoint: .top,
//			endPoint: .bottom
//		)
//		RadialGradient(colors: [.white, .blue], center: .center, startRadius: 100, endRadius: 200)
		AngularGradient(colors: [.white, .blue, .red, .brown, .cyan, .green], center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
