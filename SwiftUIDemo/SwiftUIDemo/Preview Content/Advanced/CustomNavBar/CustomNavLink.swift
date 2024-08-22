//
//  CustomNavLink.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import SwiftUI

struct CustomNavLink<Label: View, Destination: View>: View {

    let label: Label
    let destination: Destination

    init(@ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label) {
        self.label = label()
        self.destination = destination()
    }
    var body: some View {
        NavigationLink {
            CustomNavBarContainerView {
                destination
            }
            .toolbar(.hidden)
        } label: {
            label
        }
    }
}

#Preview {
    CustomNavView {
        CustomNavLink(destination: {
            Text("Screen Test")
        }, label: {
            Text("Tap Me!!!")
        })
    }
}
