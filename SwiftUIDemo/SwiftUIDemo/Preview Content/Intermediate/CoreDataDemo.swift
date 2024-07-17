//
//  CoreDataDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 15/07/2024.
//

import SwiftUI
import CoreData

class CoreDataViewModel: ObservableObject {

    @Published var savedFruits = [FruitEntity]()
    let container: NSPersistentContainer
    init() {
        container = NSPersistentContainer(name: "FruitContainer")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("ERROR LOAD CORE DATA. \(error)")
            }
        }

        fetchFruits()
    }

    func fetchFruits() {
        let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
        do {
            savedFruits = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }

    }

    func addFruit(text: String) {
        let newFruit = FruitEntity(context: container.viewContext)
        newFruit.name = text
        saveData()
    }

    func deleteFruit(indexSet: IndexSet) {
        guard let index = indexSet.first else {
            return
        }
        let entity = savedFruits[index]
        container.viewContext.delete(entity)
        saveData()
    }

    func saveData() {
        do {
            try container.viewContext.save()
            fetchFruits()
        } catch let error {
            print("Error save data. \(error)")
        }
    }
}

struct CoreDataDemo: View {

    @StateObject var vm = CoreDataViewModel()
    @State var textFieldText: String = ""
    var body: some View {

        NavigationView(content: {
            VStack(spacing: 20) {
                TextField("Add fruit here...", text: $textFieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 50)
                    .background(.gray.opacity(0.2))
                    .cornerRadiusRectangle(radius: 10)
                    .padding(.horizontal)

                Button(action: {
                    guard !textFieldText.isEmpty else {
                        return
                    }
                    vm.addFruit(text: textFieldText)
                    textFieldText = ""
                }, label: {
                    Text("Submit")
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.blue)
                        .cornerRadiusRectangle(radius: 10)
                        .padding(.horizontal)


                })

                List {
                    ForEach(vm.savedFruits) { fruit in
                        Text(fruit.name ?? "No name")
                    }
                    .onDelete(perform: vm.deleteFruit)
                }
                .listStyle(PlainListStyle())

                Spacer()
            }
            .navigationTitle("Fruits")
        })
    }
}

#Preview {
    CoreDataDemo()
}
