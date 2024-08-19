//
//  PreferenceKeyDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/08/2024.
//

import SwiftUI

struct PreferenceKeyDemo: View {
    @State private var text: String = "Hello world"

    var body: some View {
        NavigationView(content: {
            SecondScreen(text: text)
                .navigationTitle("Navigation Title")
//                .customTitle("New value !!!")
        })
        .onPreferenceChange(CustomTitlePreferenceKey.self, perform: { value in
            self.text = value
        })
    }
}

#Preview {
    PreferenceKeyDemo()
}

extension View {
    func customTitle(_ text: String) -> some View {
        self.preference(key: CustomTitlePreferenceKey.self, value: text)
    }
}

struct SecondScreen: View {

    var text: String
    @State private var newValue: String = ""

    var body: some View {
        Text(text)
            .onAppear(perform: getDataFromDatabase)
            .customTitle(newValue)
    }

    func getDataFromDatabase() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.newValue = "New value from database"
        }
    }
}

struct CustomTitlePreferenceKey: PreferenceKey {
    static var defaultValue: String = "test"

    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}
