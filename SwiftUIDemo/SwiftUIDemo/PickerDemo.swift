//
//  PickerDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/06/2024.
//

import SwiftUI

struct PickerDemo: View {
    @State private var selection: String = "apple"
    private var fruits: [String] = [
        "apple", "banana", "pear"
    ]

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {
        VStack {
            HStack {
                Text("Value Selection:")
                Text(selection)
            }
            .background(.yellow)

            Picker("Picker", selection: $selection) {
                ForEach(fruits.indices) { index in
                    Text("\(fruits[index])").tag("\(fruits[index])")
                }
            }
            .pickerStyle(SegmentedPickerStyle())

//            Picker(selection: $selection) {
//                ForEach(18..<50) { value in
//                    Text("\(value)").tag("\(value)")
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(WheelPickerStyle())
        }


    }
}

#Preview {
    PickerDemo()
}
