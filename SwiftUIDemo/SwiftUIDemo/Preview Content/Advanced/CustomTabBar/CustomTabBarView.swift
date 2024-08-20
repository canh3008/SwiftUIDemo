//
//  CustomTabBarView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/08/2024.
//

import SwiftUI

struct CustomTabBarView: View {

    var tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .background(ignoresSafeAreaEdges: .bottom)
    }
}

extension CustomTabBarView {
    func tabView(tab: TabBarItem) -> some View {
        VStack {
            tab.iconName
                .font(.title)
                .foregroundStyle(selection == tab ? .white : .black)

            Text(tab.title)
                .font(.subheadline)
                .foregroundStyle(selection == tab ? .white : .black)
        }
        .padding(.vertical, 5)
        .frame(maxWidth: .infinity)
        .background(selection == tab ? tab.color : .clear)
        .cornerRadiusRectangle(radius: 10)
        .onTapGesture {
            withAnimation {
                selection = tab
            }

        }
    }
}

#Preview {
    let mockTabs = TabBarItem.allCases
    return CustomTabBarView(tabs: mockTabs, selection: .constant(.home))
}
