//
//  BadgesDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 27/06/2024.
//

import SwiftUI

struct BadgesDemo: View {
    var body: some View {
        let badgeView = Text("\(20)")
                    .monospacedDigit()
                    .foregroundColor(.red)
                    .bold()

        List {
            Text("Hello word!!!!")
                .badge(badgeView)
            Text("Hello word!!!!")
            Text("Hello word!!!!")
        }
//        TabView {
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//                .badge(2)
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("new")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("profile")
//                }
//        }
    }
}

#Preview {
    BadgesDemo()
}
