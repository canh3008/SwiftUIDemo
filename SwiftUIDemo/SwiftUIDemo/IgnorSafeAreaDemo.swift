//
//  IgnorSafeAreaDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 05/06/2024.
//

import SwiftUI

struct IgnorSafeAreaDemo: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Tile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                .background(.blue)

                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(.white)
                        .frame(height: 50)
                        .padding()
                }
            }
            .background(.orange)

        }
        .background(
            Color.red
        )
    }
}

#Preview {
    IgnorSafeAreaDemo()
}
