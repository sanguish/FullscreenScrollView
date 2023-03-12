//
//  FullScreenScrollview.swift
//  UIGrabBag
//
//  Created by Scott Anguish on 3/11/23.
//

import SwiftUI

struct FullScreenScrollview<Content: View>: View {
	let content: Content

	init(@ViewBuilder _ content: () -> Content) {
		self.content = content()
	}

	var body: some View {
		GeometryReader { fullView in
			ScrollView(showsIndicators: false) {
				VStack {
					content
				}.frame(minHeight: fullView.size.height)
			}
		}
	}
}

struct FullScreenScrollview_Previews: PreviewProvider {
    static var previews: some View {
		FullScreenScrollview() {
				Text("Heading")
					.frame(maxWidth: .infinity, alignment: .leading)
					.padding(.bottom, 16.0)
					.font(.title)
				Text(bodyText)
					.frame(maxWidth: .infinity, alignment: .leading)
					.font(.body)
				Spacer(minLength: 20)
				Button {
				} label: {
					Text("Click to continue")
						.frame(maxWidth: .infinity)
				}
				.buttonStyle(.borderedProminent)
				.padding(.horizontal)
			}.padding(.horizontal, 32.0)
    }

	static private var bodyText: String {
		return
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus cras adipiscing enim. Dui nunc mattis enim ut tellus elementum sagittis vitae. Neque convallis a cras semper auctor. Elementum facilisis leo vel fringilla est ullamcorper. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Sed faucibus turpis in eu.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus cras adipiscing enim. Dui nunc mattis enim ut tellus elementum sagittis vitae. Neque convallis a cras semper auctor. Elementum facilisis leo vel fringilla est ullamcorper. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Sed faucibus turpis in eu.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus cras adipiscing enim. Dui nunc mattis enim ut tellus elementum sagittis vitae. Neque convallis a cras semper auctor. Elementum facilisis leo vel fringilla est ullamcorper. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Sed faucibus turpis in eu.


"""
	}
}
