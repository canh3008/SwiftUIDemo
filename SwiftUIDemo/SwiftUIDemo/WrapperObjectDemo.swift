//
//  WrapperObjectDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 24/06/2024.
//

import SwiftUI

struct Fruit: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [Fruit ] = []
    @Published var isLoading: Bool = false

    init() {
        fruits = getAll()
    }
    
    func getAll() -> [Fruit] {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(Fruit(name: "apples", count: 20))
            self.fruits.append(Fruit(name: "banana", count: 20))
            self.fruits.append(Fruit(name: "watermelon", count: 100))
            self.isLoading = false
        }

        return fruits
    }

    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct WrapperObjectDemo: View {

    @StateObject private var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationView(content: {
            if fruitViewModel.isLoading {
                ProgressView()
            } else {
                List {
                    FruitList(fruitViewModel: fruitViewModel)
                }
                .listStyle(DefaultListStyle())
                .navigationTitle("Fruits")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            RandomView(fruitViewModel: fruitViewModel)
                        } label: {
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.red)
                        }
                    }
                })
            }

        })
    }
}

struct FruitList: View {

    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ForEach(fruitViewModel.fruits) { fruit in
            HStack {
                Text("\(fruit.count)")
                    .font(.title)
                    .foregroundStyle(.red)

                Text(fruit.name)
                    .font(.title)

                Spacer()
            }
        }
        .onDelete(perform: fruitViewModel.delete(index:))
    }
}

struct RandomView: View {

    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                FruitList(fruitViewModel: fruitViewModel)
            }

        }
    }
}

#Preview {
    WrapperObjectDemo()
}
