//
//  BindingDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 07/06/2024.
//

import SwiftUI

struct BindingDemo: View {
    @State private var total: Int = 0
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack {
                Text("Total: \(total)")
                    .font(.largeTitle)

                ButtonItem(value: $total)

            }
        }
    }
}

#Preview {
    BindingDemo()
}

struct ButtonItem: View {
    @Binding var value: Int

    @State private var backgroundColor: Color = Color.yellow

    var body: some View {
        Button {
            value += 1
            if value == 10 {
                value = 0
            }
        } label: {
            Text("Plus")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .padding()
                .background(
                    value > 0 ? .red : .yellow
                )
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
