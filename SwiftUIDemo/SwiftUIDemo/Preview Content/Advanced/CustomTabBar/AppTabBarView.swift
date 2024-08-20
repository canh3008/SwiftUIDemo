//
//  AppTabBarView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/08/2024.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var tabSelection: TabBarItem = .home

    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            GridDemo()
                .tabBarItem(tab: .home, selection: $tabSelection)

            GridDemo()
                .tabBarItem(tab: .favorite, selection: $tabSelection)

            Color.yellow
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

#Preview {
    AppTabBarView()
}

extension AppTabBarView {
    var defaultTabBar: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        }
    }
}
