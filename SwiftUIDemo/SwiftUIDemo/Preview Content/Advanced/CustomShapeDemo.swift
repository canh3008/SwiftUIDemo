//
//  CustomShapeDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 13/08/2024.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path({ path in
            path.move(to: CGPoint(x: rect.midX,
                                  y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX,
                                     y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX,
                                     y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX,
                                     y: rect.minY))

        })
    }
}

struct CustomShapeDemo: View {
    var body: some View {
//        Rectangle()
//            .trim(from: 0.5, to: 1)
//            .frame(width: 250, height: 250)

//        Image("super")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 250, height: 250)
//            .clipShape(Triangle())

        Triangle()
            .fill(
                LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing)
            )
            .stroke(.red,
                    style: StrokeStyle(lineWidth: 5,
                                       lineCap: .round,
                                       dash: [10]))
            .frame(width: 250, height: 250)
    }
}

#Preview {
    CustomShapeDemo()
}
