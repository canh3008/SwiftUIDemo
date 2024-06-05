//
//  ExtractedFuntionsDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 05/06/2024.
//

import SwiftUI

struct ExtractedFuntionsDemo: View {

    @State private var backgroundColor: Color = Color.brown

    var body: some View {
        ZStack {

            // Background
            backgroundColor
                .ignoresSafeArea()

            // Content
            layerContent
        }
    }

    var layerContent: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)

            Button(action: {
                self.buttonPressed()
            }, label: {
                Text("Button")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }

    func buttonPressed() {
        self.backgroundColor = Color.purple
    }
}

#Preview {
    ExtractedFuntionsDemo()
}
