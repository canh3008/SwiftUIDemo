//
//  PaddingAndSpacerDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 03/06/2024.
//

import SwiftUI

struct PaddingAndSpacerDemo: View {
    var body: some View {

        VStack {
            HStack(content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)

                Spacer()
                    .frame(height: 20)
                    .background(.blue)

                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)

            })
            VStack {
                Text("Hello world!!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .background(.red)
            }
            .padding()
            .background(
                Color.white
                    .shadow(color: .black.opacity(0.3),
                              radius: 10,
                              x: 0,
                              y: 10)
            )
        .padding(.all, 20)
        }

    }
}

#Preview {
    PaddingAndSpacerDemo()
}
