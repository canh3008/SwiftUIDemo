//
//  GeometryPreferenceKeyDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/08/2024.
//

import SwiftUI

struct GeometryPreferenceKeyDemo: View {
    
    @State private var rectSize: CGSize = .zero

    var body: some View {
        VStack {
            Text("\(rectSize.height)")
                .frame(width: rectSize.width,
                       height: rectSize.height)
                .background(.blue)
                .padding()

            Spacer()

            HStack {
                Rectangle()

                GeometryReader(content: { geometry in
                    Rectangle()
                        .updateRectangleSize(geometry.size)
//                        .overlay {
//                            Text("\(geometry.size.width)").foregroundStyle(.white)
//                        }
                })


                Rectangle()
            }
            .frame(height: 55)
        }
        .onPreferenceChange(RectangleGeometryPreferenceKey.self, perform: { value in
            self.rectSize = value
        })
    }
}

#Preview {
    GeometryPreferenceKeyDemo()
}

extension View {
    func updateRectangleSize(_ size: CGSize) -> some View {
        preference(key: RectangleGeometryPreferenceKey.self, value: size)
    }
}

struct RectangleGeometryPreferenceKey: PreferenceKey {

    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
