//
//  VStack_HStack_ZStackDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 03/06/2024.
//

import SwiftUI

struct VStack_HStack_ZStackDemo: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.brown)
                .frame(width: 350, height: 500)

            VStack(content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 150, height: 150)
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                }
                .background(.white)
            })
            .background(.black)
        }
    }
}

#Preview {
    VStack_HStack_ZStackDemo()
}
