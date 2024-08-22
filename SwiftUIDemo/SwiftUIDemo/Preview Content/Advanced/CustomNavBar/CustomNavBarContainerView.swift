//
//  CustomNavBarContainerView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {

    private let content: Content
    @State var isShowBackButton: Bool = true
    @State var title: String = ""
    @State var subTitle: String? = nil

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(isShowBackButton: isShowBackButton,
                             title: title,
                             subTitle: subTitle)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKeys.self, perform: { value in
            title = value
        })
        .onPreferenceChange(CustomNavBarSubtitlePreferenceKeys.self, perform: { value in
            title = value
        })
        .onPreferenceChange(CustomNavBarHideBackButtonPreferenceKeys.self, perform: { value in
            isShowBackButton = !value
        })

    }
}

#Preview {
    CustomNavBarContainerView {
        ZStack(content: {
            Color.white.ignoresSafeArea()

            Text("hello")
        })
    }
}
