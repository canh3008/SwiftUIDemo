//
//  TextEditorDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 17/06/2024.
//

import SwiftUI

struct TextEditorDemo: View {

    @State private var text: String = "This is an apple"
    @State private var saveText: String = ""


    var body: some View {
        NavigationView(content: {
            VStack(content: {
                TextEditor(text: $text)
                    .frame(height: 250)
                    .colorMultiply(.gray)
                    .cornerRadiusRectangle(radius: 15)

                Button(action: {
                    saveText = text
                }, label: {
                    Text("Save")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadiusRectangle(radius: 20)
                })
                
                Text(saveText)

                Spacer()
            })
            .padding()
        })
    }
}

#Preview {
    TextEditorDemo()
}
