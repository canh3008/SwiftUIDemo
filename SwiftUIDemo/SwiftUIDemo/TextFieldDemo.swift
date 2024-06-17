//
//  TextFieldDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/06/2024.
//

import SwiftUI

struct TextFieldDemo: View {

    @State private var textFieldText: String = ""
    var body: some View {
        NavigationView(content: {
            VStack {
                Text(textFieldText)
                    .font(.largeTitle)
                    .foregroundStyle(.red)

                VStack {
                    TextField("Type something here ...",
                              text: $textFieldText)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5)
                    )

                    Button(action: {

                    }, label: {
                        Text("Submit")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(textFieldText.isEmpty ? .gray : .blue)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 20)
                            )
                    })
                    .disabled(textFieldText.isEmpty)
                    .keyboardType(.numberPad)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Text field demo")
        })


    }
}

#Preview {
    TextFieldDemo()
}
