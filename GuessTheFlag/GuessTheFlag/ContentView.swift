//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sanket Kumar on 17/07/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var showAlert = false
	
    var body: some View {
		Button("Show Alert") {
			showAlert = true
		}
		.alert("Important message", isPresented: $showAlert) {
			Button("Delete", role: .destructive) { }
			Button("Cancel", role: .cancel) { }
		} message: {
			Text("Please read this")
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
