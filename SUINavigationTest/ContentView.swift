//
//  ContentView.swift
//  SUINavigationTest
//
//  Created by Захар Литвинчук on 09.07.2024.
//

import SwiftUI

struct ContentView: View {

	@StateObject var firstCoordinator = FirstCoordinator<FirstViewModel, SecondViewModel>(firstViewModel: FirstViewModel())
	   @StateObject var secondCoordinator = SecondCoordinator(secondViewModel: SecondViewModel(value: 0))

	var body: some View {
		let _ = Self._printChanges()

		contentView
			.tint(.white)
	}

	private var contentView: some View {
		TabView {
			ForEach(TabItem.allCases, id: \.self) { tab in
				tabItemView(for: tab)
					.tabItem {
						VStack(spacing: 8) {
							tab.icon
							Text(tab.title)
						}
						.font(.title)
					}
			}
		}
	}
}

#Preview {
	ContentView()
}
