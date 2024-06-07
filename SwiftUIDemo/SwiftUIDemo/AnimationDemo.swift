//
//  AnimationDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 07/06/2024.
//

import SwiftUI

struct AnimationDemo: View {
    @State private var isChange: Bool = false
    var body: some View {
        VStack(spacing: 50) {
            Button {
//                withAnimation(
//                    .easeInOut
////                        .delay(2)
////                        .repeatCount(5, autoreverses: true)
////                        .repeatForever(autoreverses: false)
//                ) {
                    isChange.toggle()
//                }
            } label: {
                Text("Change frame")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }

            RoundedRectangle(cornerRadius: isChange ? 150 : 50)
                .fill(.yellow)
                .rotationEffect(Angle(degrees: isChange ? 360 : 0))
                .frame(width: 300, height: 300)
                .animation(.easeInOut.repeatForever(autoreverses: true), value: 1)

        }
    }
}

#Preview {
    AnimationDemo()
}
