//
//  BodyTextProvider.swift
//  FullscreenScrollViewDemo
//
//  Created by Scott Anguish on 3/12/23.
//

import Foundation

func bodyText(_ usesLongText: Bool = false) -> String {
	let text =
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra aliquet eget sit amet tellus cras adipiscing enim. Dui nunc mattis enim ut tellus elementum sagittis vitae. Neque convallis a cras semper auctor. Elementum facilisis leo vel fringilla est ullamcorper. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Sed faucibus turpis in eu.
"""
	if usesLongText {
		return "\(text)\n\n\(text)\n\n\(text)\n"
	} else {
		return text
	}
}
