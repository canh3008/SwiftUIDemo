//
//  FrameDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 04/03/2024.
//

import SwiftUI

struct FrameDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .background(.red)
            .frame(width: 300, height: 200, alignment: .center)
            .background(.yellow)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.brown)
    }
}

#Preview {
    FrameDemo()
}
