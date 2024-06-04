//
//  GridDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 04/06/2024.
//

import SwiftUI

struct GridDemo: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]

    var body: some View {
        ScrollView(showsIndicators: false) {

            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [], content: {
                Section(header:
                            Text("Section 1")
                                .font(.title)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 10)
                                .background(.blue)
                ) {

                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(.yellow)
                            .frame(height: 50)
                    }
                }

                Section(header:
                            Text("Section 2")
                                .font(.title)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 10)
                                .background(.red)
                ) {

                    ForEach(0..<25) { index in
                        Rectangle()
                            .fill(.pink)
                            .frame(height: 50)
                    }
                }
            })

            //            Rectangle()
            //                .fill(.white)
            //                .frame(height: 400)
            //
            //            LazyVGrid(columns: columns, content: {
            //                ForEach(0..<50) { index in
            //                    Rectangle()
            //                        .fill(.yellow)
            //                        .frame(height: 50)
            //                }
            //            })
        }
    }
}

#Preview {
    GridDemo()
}
