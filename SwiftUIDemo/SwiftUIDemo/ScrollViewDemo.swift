//
//  ScrollViewDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 04/06/2024.
//

import SwiftUI

struct ScrollViewDemo: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(content: {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(.yellow)
                                    .frame(width: 150, height: 100)
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            })
        }
    }
}

#Preview {
    ScrollViewDemo()
}
