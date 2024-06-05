//
//  ButtonDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 05/06/2024.
//

import SwiftUI

struct ButtonDemo: View {
    @State private var text = "This is my iphone"

    var body: some View {
        VStack(spacing: 20) {
            Text(text)

            Button("Press me!") {
                self.text = "Tap tap tap"
            }
            .tint(.red)

            Button(action: {
                self.text = "Save"
            }, label: {
                Text("SAVE")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .fill(.pink)
                    )
            })

            Button(action: {
                self.text = "Heart"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    }
            })
        }
    }
}

#Preview {
    ButtonDemo()
}
