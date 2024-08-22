//
//  CustomNavBarView.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.dismiss) var dismiss
    var isShowBackButton: Bool
    var title: String
    var subTitle: String?

    var body: some View {
        HStack {
            if isShowBackButton {
                backButton
            }

            Spacer()

            titleSection
        
            Spacer()

            backButton
            .opacity(0)
        }
        .padding()
        .tint(.white)
        .font(.headline)
        .foregroundStyle(.white)
        .background(
            Color.blue.ignoresSafeArea(edges: .top)
        )
    }
}

extension CustomNavBarView {
    var backButton: some View {
        Button(action: {
            dismiss.callAsFunction()
        }, label: {
            Image(systemName: "chevron.left")
        })
    }

    var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subTitle {
                Text(subTitle)
            }
        }
    }
}

#Preview {
    VStack {
        CustomNavBarView(isShowBackButton: true, title: "Hello")
        Spacer()
    }

}
