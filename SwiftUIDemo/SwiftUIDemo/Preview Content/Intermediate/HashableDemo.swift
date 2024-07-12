//
//  HashableDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 12/07/2024.
//

import SwiftUI

struct MyCustomModel: Hashable {
    let title: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct HashableDemo: View {
    let data: [MyCustomModel] = [
        MyCustomModel(title: "one"),
        MyCustomModel(title: "two"),
        MyCustomModel(title: "three"),
        MyCustomModel(title: "four"),
        MyCustomModel(title: "five")
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item.hashValue.description)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    HashableDemo()
}
