//
//  BackgroundAndOverlayDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 04/03/2024.
//

import SwiftUI

struct BackgroundAndOverlayDemo: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(.yellow)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(.red)
//            )

        Circle()
            .fill(.red)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(width: 110, height: 110, alignment: .bottomTrailing)
            )
            .frame(width: 120, height: 120, alignment: .center)
            .background(
                Circle().fill(.yellow)
            )
    }
}

#Preview {
    BackgroundAndOverlayDemo()
}
