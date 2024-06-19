//
//  ColorPickerDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/06/2024.
//

import SwiftUI

struct ColorPickerDemo: View {

    @State private var backgroundColor: Color = .white

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .foregroundStyle(.white)
            .font(.title)
            .padding()
            .background(.blue)
            .cornerRadiusRectangle(radius: 20)
            .padding()
        }
    }
}

#Preview {
    ColorPickerDemo()
}
