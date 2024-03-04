//
//  ImageDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 04/03/2024.
//

import SwiftUI

struct ImageDemo: View {
    var body: some View {
        Image("super")
//            .renderingMode(.template)
            .resizable()
//            .scaledToFit()
            .scaledToFill()
            .foregroundStyle(.yellow)
            .frame(width: 300, height: 200)

//            .clipped()
            .clipShape(
//                RoundedRectangle(cornerRadius: 20)
                Circle()
//                Ellipse()

            )


    }
}

#Preview {
    ImageDemo()
}
