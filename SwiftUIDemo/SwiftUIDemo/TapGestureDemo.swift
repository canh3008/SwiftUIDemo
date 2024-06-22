//
//  TapGestureDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 22/06/2024.
//

import SwiftUI

struct TapGestureDemo: View {

    @State private var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(isSelected ? .yellow : .blue)
                .frame(height: 300)

            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.title2)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadiusRectangle(radius: 10)
            })

            Text("Tap Ges")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadiusRectangle(radius: 10)
                .onTapGesture(count: 1, perform: {
                    isSelected.toggle()
                })

            Spacer()
        }
        .padding()
    }
}

#Preview {
    TapGestureDemo()
}
