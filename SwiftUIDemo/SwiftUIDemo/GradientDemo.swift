//
//  GradientDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 26/02/2024.
//

import SwiftUI

struct GradientDemo: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
//            .fill(Color("primary_color"))
            .fill(
//                LinearGradient(colors: [Color("primary_color"), .red], startPoint: .leading, endPoint: .trailing)

//                RadialGradient(gradient: .init(colors: [.red, .blue]), center: .center, startRadius: 0, endRadius: 100)

                AngularGradient(colors: [.blue, .green], center: .center, angle: Angle(radians: .pi))
            )
            .frame(width: 300, height: 200, alignment: .center)


    }
}

#Preview {
    GradientDemo()
}
