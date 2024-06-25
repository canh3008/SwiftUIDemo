//
//  AppStorageDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 25/06/2024.
//

import SwiftUI

struct InputName: View {
    @State private var name: String = ""
    @AppStorage("name") var nameUser: String?

    var body: some View {
        VStack {
            TextField("Please enter your name!!!!", text: $name)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadiusRectangle(radius: 10)

            Button(action: {
                nameUser = name
            }, label: {
                Text("Save".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .background(.blue)
                    .cornerRadiusRectangle(radius: 15)
            })
        }
        .padding()
    }
}

struct AppStorageDemo: View {

    @AppStorage("name") var name: String?

    var body: some View {
        NavigationView(content: {
            VStack {
                if let name = name {
                    Text("My name is: \(name)")
                } else {
                    Text("What is your name")
                }

            }
            .toolbar(content: {
                NavigationLink {
                    InputName()
                } label: {
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.red)
                }
            })
            .onAppear(perform: {
                
            })
        })

    }
}

#Preview {
    AppStorageDemo()
}

#Preview {
    InputName()
}
