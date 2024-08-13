//
//  ViewModifierDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 13/08/2024.
//

import SwiftUI

struct DefaultButtonModifier: ViewModifier {

    let backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .font(.subheadline)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(backgroundColor)
            .cornerRadiusRectangle(radius: 20)
            .padding()
    }
}

struct ViewModifierDemo: View {
    var body: some View {
        VStack {
            Text("text 1")
                .withDefaultButtonFormatView(backgroundColor: .red)


            Text("text 2")
                .withDefaultButtonFormatView(backgroundColor: .blue)

            Text("text 3")
                .withDefaultButtonFormatView(backgroundColor: .yellow)
        }
    }
}

extension View {
    func withDefaultButtonFormatView(backgroundColor: Color) -> some View {
        modifier(DefaultButtonModifier(backgroundColor: backgroundColor))
    }
}

#Preview {
    ViewModifierDemo()
}
