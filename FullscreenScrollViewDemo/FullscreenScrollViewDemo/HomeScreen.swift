//
//  HomeScreen.swift
//  UIGrabBag
//
//  Created by Scott Anguish on 3/3/23.
//

import SwiftUI

struct HomeScreen: View {
	var body: some View {
		NavigationStack {
			VStack {
				List {
					Section("First attempt") {
						NavigationLink("Short text") {
							StartingDetailView(bodyText: bodyText())
								.navigationTitle("Detail: Short Text")
						}
						NavigationLink("Long Text") {
							StartingDetailView(bodyText: bodyText(true))
								.navigationTitle("Detail: Long Text")

						}
					}.headerProminence(.increased)

					Section("Working Solution") {
						NavigationLink("Short text") {
							WorkingDetailView(bodyText: bodyText())
								.navigationTitle("Detail: Short Text")

						}
						NavigationLink("Long Text") {
							WorkingDetailView(bodyText: bodyText(true))
								.navigationTitle("Detail: Long Text")

						}
					}.headerProminence(.increased)

					Section("Reusable View") {
						NavigationLink("Short text") {
							FinalDetailView(bodyText: bodyText())
								.navigationTitle("Detail: Short Text")

						}
						NavigationLink("Long Text") {
							FinalDetailView(bodyText: bodyText(true))
								.navigationTitle("Detail: Long Text")

						}
					}.headerProminence(.increased)
				}
			}

			Spacer()
		}
	}
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
