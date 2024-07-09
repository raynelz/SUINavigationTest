//
//  SetupTabBar.swift
//  SUINavigationTest
//
//  Created by Захар Литвинчук on 09.07.2024.
//

import SwiftUI

extension ContentView {

	func setupTabBar() {
		let appearance = UITabBarAppearance()
		appearance.backgroundColor = .lightGray

		appearance.stackedLayoutAppearance.normal.iconColor = .darkGray
		appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
			NSAttributedString.Key.foregroundColor: Color.black
		]

		UITabBar.appearance().standardAppearance = appearance
		UITabBar.appearance().scrollEdgeAppearance = appearance
	}

	@ViewBuilder
	func tabItemView(for item: TabItem) -> some View {
		switch item {
			case .places: RootView(coordinator: firstCoordinator)
			case .favorite: FirstView(coordinator: firstCoordinator)
			case .routes: SecondView(coordinator: secondCoordinator)
		}
	}
}
