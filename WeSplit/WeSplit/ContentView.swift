//
//  ContentView.swift
//  WeSplit
//
//  Created by Sanket Kumar on 16/07/22.
//

import SwiftUI

struct ContentView: View {
	
	@State private var checkAmount = 0.0
	@State private var numberOfPeople = 2
	@State private var tipPercentage = 20
	@FocusState private var amountIsFocused: Bool
	
	private let currency: FloatingPointFormatStyle<Double>.Currency  = .currency(code: Locale.current.currencyCode ?? "USD")
	
	var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Amount", value: $checkAmount, format: currency)
						.keyboardType(.decimalPad)
						.focused($amountIsFocused)
					Picker("Number of people", selection: $numberOfPeople) {
						ForEach(2..<50) {
							Text("\($0) people")
						}
					}
				}
				Section {
					Picker("Tip percentage", selection: $tipPercentage) {
						ForEach(0..<101) {
							Text("\($0)%")
						}
					}
				} header: {
					Text("How much tip do u want to leave?")
				}
				
				Section {
					Text(totalCheckAmount, format: currency)
				} header: {
					Text("Total check amount")
				}
			
				Section {
					Text(totalPerPerson, format: currency)
				} header: {
					Text("Amount per person")
				}
			}
			.navigationTitle(Text("WeSplit"))
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				ToolbarItemGroup(placement: .keyboard) {
					Spacer()
					Button("Done") {
						amountIsFocused = false
					}
				}
			}
		}
	}
	
	var totalCheckAmount: Double {
		let tipSelection = Double(tipPercentage)
		let tipValue = checkAmount / 100.0 * tipSelection
		let grandTotal = checkAmount + tipValue
		return grandTotal
	}
	
	var totalPerPerson: Double {
		let peopleCount = Double(numberOfPeople + 2)
		return totalCheckAmount / peopleCount
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
