//
//  AsyncImageDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 27/06/2024.
//

import SwiftUI

struct AsyncImageDemo: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .cornerRadiusRectangle(radius: 20)
            case .failure(let _):
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }

        //        AsyncImage(url: url) { image in
//            image
//                .resizable()
//                .scaledToFit()
//                .frame(width: 250, height: 250)
//                .cornerRadiusRectangle(radius: 20)
//        } placeholder: {
//            Image(systemName: "questionmark")
//                .font(.headline)
//        }

    }
}

#Preview {
    AsyncImageDemo()
}
