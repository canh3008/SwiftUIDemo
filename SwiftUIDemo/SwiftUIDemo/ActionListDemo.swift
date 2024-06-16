//
//  ActionListDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 16/06/2024.
//

import SwiftUI

struct ActionListDemo: View {
    @State private var fruits: [String] = [
        "banana", "peach", "apple", "orange"
    ]

    @State private var veggies: [String] = [
        "Tomato", "Potato", "Carrot"
    ]

    @State private var isExpand: Bool = true
    var body: some View {
        NavigationView(content: {
            List {
                Section("Fruits",
                        isExpanded: $isExpand) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.yellow)
                }

                Section("Veggies") {
                    ForEach(veggies, id: \.self) { ve in
                        Text(ve)
                    }
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }

                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            })
            .listStyle(SidebarListStyle())
            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("Demo")
        })
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Save") {
            fruits.append("coconut")
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ActionListDemo()
}
