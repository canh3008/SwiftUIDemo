//
//  DarkModeDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 22/06/2024.
//

import SwiftUI

struct DarkModeDemo: View {
    var body: some View {
        NavigationView(content: {
            ScrollView {
                Text("This color is PRIMAY")
                    .foregroundStyle(.primary)
                Text("This color is SECONDARY")
                    .foregroundStyle(.secondary)
                Text("This color is BLACK")
                    .foregroundStyle(.black)
                Text("This color is WHITE")
                    .foregroundStyle(.white)
                 Text("This color is custom")
                    .foregroundStyle(Color("Color_custom", bundle: nil))


            }
            .navigationTitle("Dark Mode")
        })
    }
}

#Preview {
    DarkModeDemo()
        .preferredColorScheme(.dark)
}

#Preview(body: {
    DarkModeDemo()
        .preferredColorScheme(.light)
})
