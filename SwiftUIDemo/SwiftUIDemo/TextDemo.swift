//
//  TextDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 26/02/2024.
//

import SwiftUI

struct TextDemo: View {
    var body: some View {
        Text("Hello, World!. Text Text Text Text Text Text Text Text Text Text Text Text Text")
//            .font(.title)
//            .fontWeight(.semibold)
//            .padding(EdgeInsets(top: 50, leading: 5, bottom: 5, trailing: 5))
//            .strikethrough() // gạch ngang chữ
//            .underline(pattern: .dot, color: Color.red)
//            .kerning(10) // Khoảng cách cách chữ cái
            .font(.system(.title, design: .default, weight: .bold))
            .baselineOffset(20) // Khoảng cách các line
            .multilineTextAlignment(.leading) // Canh lề cho text
//            .foregroundStyle(.blue) // Thay đổi color
//            .foregroundStyle(LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom))
//            .foregroundStyle(.linearGradient(.init(colors: [.green, .orange]), startPoint: .leading, endPoint: .trailing))
            .frame(width: 300, height: 200, alignment: .leading)
    }
}

#Preview {
    TextDemo()
}
