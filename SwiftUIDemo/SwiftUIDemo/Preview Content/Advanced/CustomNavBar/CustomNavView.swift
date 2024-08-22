//
//  CustomNavView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import SwiftUI

struct CustomNavView<Content: View>: View {

    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        NavigationView(content: {
            CustomNavBarContainerView {
                content
            }
        })
    }
}

#Preview {
    VStack {
        CustomNavView(content: {
            Spacer()
        })

        Spacer()
    }

}
