//
//  AppNavBarView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.green.ignoresSafeArea()

                CustomNavLink {
                    Text("Second screen")
                        .setTitleNavView(title: "Test")
                } label: {
                    Text("Tap Me!!!")
                }

            }
            .setHiddenBackButton(isHidden: true)
        }
    }
}

extension View {
    func setTitleNavView(title: String) -> some View {
        self.preference(key: CustomNavBarTitlePreferenceKeys.self, value: title)
    }

    func setSubtitleNavView(title: String) -> some View {
        self.preference(key: CustomNavBarSubtitlePreferenceKeys.self, value: title)
    }

    func setHiddenBackButton(isHidden: Bool) -> some View {
        self.preference(key: CustomNavBarHideBackButtonPreferenceKeys.self, value: isHidden)
    }
}

#Preview {
    AppNavBarView()
}

extension AppNavBarView {
    var defaultNavBar: some View {
        NavigationView(content: {
            ZStack(content: {
                Color.gray
                    .ignoresSafeArea()

                NavigationLink(destination: Text("Destination")
                    .navigationTitle("Test")
//                    .navigationBarBackButtonHidden(true)

                ) {
                    Text("Navigate")
                }
            })
            .navigationTitle("Navigation Bar")

        })
    }
}
