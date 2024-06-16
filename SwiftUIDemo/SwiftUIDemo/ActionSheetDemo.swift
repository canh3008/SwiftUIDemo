//
//  ActionSheetDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/06/2024.
//

import SwiftUI

struct ActionSheetDemo: View {
    @State private var isShow: Bool = false
    @State private var background: Color = Color.yellow

    var body: some View {
        ZStack {
            background.ignoresSafeArea()

            VStack(spacing: 20) {
                Button {
                    isShow.toggle()
                } label: {
                    Text("Click me!!!")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }
            .confirmationDialog("This is an action sheet", isPresented: $isShow, titleVisibility: .visible) {
                Button("Test 1", role: .destructive, action: {})
                Button("Test 2", role: .destructive, action: {})
                Button("Test 3", role: .destructive, action: {})
                Button("Test 4", role: .destructive, action: {})
            }
        }
    }
}

#Preview {
    ActionSheetDemo()
}
