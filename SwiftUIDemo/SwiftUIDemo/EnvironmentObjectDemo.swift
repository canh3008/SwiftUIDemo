//
//  EnvironmentObjectDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 25/06/2024.
//

import SwiftUI

struct Person: Hashable {
    let name: String
    let age: Int
}

class PersonViewModel: ObservableObject {
    @Published var persons: [Person] = []
    @Published var isLoading: Bool = false

    init() {
        getAllData()
    }

    func getAllData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.persons.append(Person(name: "Minh", age: 20))
            self.persons.append(Person(name: "Tuan", age: 30))
            self.persons.append(Person(name: "Hao", age: 18))
            self.persons.append(Person(name: "Trinh", age: 40))
            self.isLoading = false
        }
    }

    func delete(index: IndexSet) {
        persons.remove(atOffsets: index)
    }
}

struct EnvironmentObjectDemo: View {

    @StateObject private var personViewModel: PersonViewModel = PersonViewModel()

    var body: some View {
        NavigationView(content: {
            List {
                ForEach(personViewModel.persons, id: \.self) { person in
                    NavigationLink {
                        PersonDetail(name: person.name)
                    } label: {
                        HStack {
                            Text("\(person.age)")
                            Text(person.name)
                        }
                        .font(.title)
                    }

                }
            }
            .navigationTitle("Person List")
        })
        .environmentObject(personViewModel)
    }
}

struct PersonDetail: View {
    let name: String
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)),
                                                       Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()

            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(name)
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadiusRectangle(radius: 40)
            }


        }
    }
}

struct FinalView: View {

    @EnvironmentObject var personViewModel: PersonViewModel
    var body: some View {
        List {
            ForEach(personViewModel.persons, id: \.self) { person in
                HStack {
                    Text("\(person.age)")
                    Text(person.name)
                }
                .font(.title)
            }
            .onDelete(perform: personViewModel.delete(index:))
        }
    }
}

#Preview {
    EnvironmentObjectDemo()
}

#Preview(body: {
    PersonDetail(name: "Canh")
})
