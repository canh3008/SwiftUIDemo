//
//  ButtonStyleDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 13/08/2024.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    let scaledAmount: CGFloat

    init(scaledAmount: CGFloat) {
        self.scaledAmount = scaledAmount
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
//            .opacity(configuration.isPressed ? 0.6 : 1)
//            .brightness(configuration.isPressed ? 0.3 : 0)
            .scaleEffect(configuration.isPressed ? scaledAmount : 1)
            .opacity(configuration.isPressed ? 0.7 : 1)

    }
}

extension View {
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View {
        self.buttonStyle(PressableButtonStyle(scaledAmount: scaledAmount))
    }
}

struct ButtonStyleDemo: View {
    var body: some View {
        Button(action: {

        }, label: {
            Text("Click Me")
                .font(.title)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadiusRectangle(radius: 25)
                .padding()

        })
        .withPressableStyle()
    }
}

#Preview {
    ButtonStyleDemo()
}
