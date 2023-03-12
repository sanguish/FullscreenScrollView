//
//  FinalDetailView.swift
//  FullscreenScrollViewDemo
//
//  Created by Scott Anguish on 3/12/23.
//

import SwiftUI

struct FinalDetailView: View {
	var bodyText: String
	
	var body: some View {
		NavigationView {
			FullScreenScrollview() {
				VStack {
					Image("DetailBanner")
						.resizable()
						.scaledToFit()
						.padding(.bottom)
					Text("Heading")
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.bottom)
						.padding(.horizontal, 32.0)
						.font(.title)
					Text(bodyText)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal, 32.0)
					
						.font(.body)
					Spacer(minLength: 32)
					Button {
					} label: {
						Text("Click to continue")
							.frame(maxWidth: .infinity)
					}
					.buttonStyle(.borderedProminent)
					.padding(.horizontal, 32.0)
				}
			}
		}
	}
}

struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		FinalDetailView(bodyText:
							bodyText(false))
	}
}
