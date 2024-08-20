//
//  CustomTabBarContainerView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/08/2024.
//

import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
    private let content: Content
    @Binding var selection: TabBarItem
    @State private var tabs: [TabBarItem] = []

    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                content
            }
            .frame(maxHeight: .infinity)

            CustomTabBarView(tabs: tabs, selection: $selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            tabs = value
        })
    }
}

#Preview {
    CustomTabBarContainerView(selection: .constant(.home), content: {

    })
}
