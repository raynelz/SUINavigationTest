//
//  RootView.swift
//  SUINavigationTest
//
//  Created by Захар Литвинчук on 10.07.2024.
//

import SwiftUI
import SUINavigation

struct RootView<Coordinator: FirstCoordinatorProtocol>: View {
	@State private var isShowingFirst: Bool = false
	private var firstCoordinator: Coordinator

	init(coordinator: Coordinator) {
		self.firstCoordinator = coordinator
	}

	var body: some View {
		NavigationViewStorage {
			VStack {
				Text("Root")
				Button("to First") {
					isShowingFirst = true
				}
			}
			.navigation(isActive: $isShowingFirst, id: "first") {
				FirstView(coordinator: firstCoordinator)
			}
		}
	}
}
