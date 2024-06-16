//
//  AlertDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/06/2024.
//

import SwiftUI

struct AlertDemo: View {

    @State private var isShow: Bool = false
    @State private var background: Color = Color.yellow

    var body: some View {
        ZStack {
            background.ignoresSafeArea()

            VStack(spacing: 20) {
                Button {
                    isShow.toggle()
                } label: {
                    Text("Error")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }
            .alert("Test", isPresented: $isShow) {
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            }
        }
    }
}

#Preview {
    AlertDemo()
}
