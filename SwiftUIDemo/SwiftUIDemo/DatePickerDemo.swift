//
//  DatePickerDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/06/2024.
//

import SwiftUI

struct DatePickerDemo: View {

    @State private var selection: Date = Date()

    let startingDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()

    let endingDate = Date()

    var body: some View {

        DatePicker("Select date",
                   selection: $selection,
                   in: startingDate...endingDate,
                   displayedComponents: .date)
            .padding()
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

#Preview {
    DatePickerDemo()
}
