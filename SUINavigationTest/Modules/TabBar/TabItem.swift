//
//  TabItem.swift
//  SUINavigationTest
//
//  Created by Захар Литвинчук on 09.07.2024.
//

import SwiftUI

enum TabItem: Int, CaseIterable {
	case places
	case routes
	case favorite

	var title: String {
		switch self {
			case .places: return "places"
			case .favorite: return "favorites"
			case .routes: return "routes"
		}
	}

	var icon: Image {
		switch self {
			case .places:
				Image(systemName: "map")
			case .routes:
				Image(systemName: "mappin.and.ellipse")
			case .favorite:
				Image(systemName: "heart.fill")
		}
	}
}
