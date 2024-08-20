//
//  TabBarItemsPreferenceKey.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/08/2024.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
    
    static var defaultValue: [TabBarItem] = []
}

struct TabBarItemModifier: ViewModifier {
    let tab: TabBarItem
    @Binding var selection: TabBarItem
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1 : 0)
            .preference(key: TabBarItemsPreferenceKey.self, value: [tab])
    }
}

extension View {
    func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
        self.modifier(TabBarItemModifier(tab: tab, selection: selection))
    }
}
