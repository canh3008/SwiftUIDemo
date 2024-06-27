//
//  FocusStateDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 27/06/2024.
//

import SwiftUI

struct FocusStateDemo: View {
    
    @FocusState private var userNameFocus: Bool
    @State private var userName: String = ""
    var body: some View {
        VStack {
            TextField("Add your name here...",
                      text: $userName)
            .focused($userNameFocus)
            .padding(.leading)
            .frame(maxWidth: .infinity, maxHeight: 55)
            .background(Color.gray.brightness(0.3))
            .cornerRadiusRectangle(radius: 12)

            Button("TOGGLE FOCUS STATE") {
                userNameFocus.toggle()
            }
        }
        .padding(40)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.userNameFocus = true

            }
        })
    }
}

#Preview {
    FocusStateDemo()
}
