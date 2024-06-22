//
//  TabViewDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 22/06/2024.
//

import SwiftUI

struct TabViewDemo: View {

    @State private var selectionTab = 0

    var body: some View {
//
//        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.yellow)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.blue)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundStyle(.red)
//        }
//        .frame(height: 400)
//        .tabViewStyle(PageTabViewStyle())

        TabView(selection: $selectionTab) {
            HomeView(selectionTab: $selectionTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("Browser")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browser")
                }
                .tag(1)

            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.red)
    }
}

#Preview {
    TabViewDemo()
}

struct HomeView: View {
    @Binding var selectionTab: Int

    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.3)
//                .ignoresSafeArea()

            Button(action: {
                selectionTab = 2
            }, label: {
                Text("Select Profile")
                    .font(.title2)
                    .foregroundStyle(.black)
                    .padding()
                    .background(.white)
                    .cornerRadiusRectangle(radius: 10)
            })
        }
    }
}
