//
//  ShapesDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 26/02/2024.
//

import SwiftUI

struct ShapesDemo: View {
    var body: some View {
//        Circle()
//            .fill(Color.red)
//            .stroke(Color.black)
//            .strokeBorder(lineWidth: 20)
//            .stroke(Color.black, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .miter, miterLimit: .pi, dash: [100], dashPhase: 30))
//            .trim(from: 0.5, to: 0.75)
//            .fill(.red)

        //Elip
//        Ellipse()
//            .fill(.green)
//            .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)

//        Capsule()
//            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        Rectangle()
            .frame(width: 300, height: 100, alignment: .center)
    }
}

#Preview {
    ShapesDemo()
}
