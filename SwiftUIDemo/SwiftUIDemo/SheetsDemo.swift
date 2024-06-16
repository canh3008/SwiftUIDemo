//
//  SheetsDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 14/06/2024.
//

import SwiftUI

struct SheetsDemo: View {

    @State private var isShow: Bool = false

    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()

            VStack {
                Button {
                    isShow.toggle()
                } label: {
                    Text("Show View")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            .red
                        )
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                        )

                }

                // METHOD - 1: SHEET
//                .fullScreenCover(isPresented: $isShow, content: {
//                    SecondView()
//                })
//                .sheet(isPresented: $isShow, content: {
//                    SecondView()
//                })

            }

            // METHOD - 2: TRASITION
//                ZStack {
//                    if isShow {
//                        TransitionView(isShow: $isShow)
//                            .padding(.top, 100)
//                            .transition(.move(edge: .bottom))
//                            .animation(.spring, value: 10)
//                    }
//                }
//                .zIndex(2)

            // METHOD - 3: OFFSET
            OffsetView(isShow: $isShow)
                .padding(.top, 100)
                .offset(y: isShow ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: isShow)


        }
    }
}

struct TransitionView: View {

    @Binding var isShow: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.blue.ignoresSafeArea()

            VStack {
                Button {
                    isShow.toggle()
                } label: {
                    XmarkImageView()
                }
            }
        }
    }
}

struct OffsetView: View {
    @Binding var isShow: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.blue
                .ignoresSafeArea()

            VStack {
                Button {
                    isShow.toggle()
                } label: {
                    XmarkImageView()
                }
            }
        }
    }
}

struct SecondView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.blue.ignoresSafeArea()

            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    XmarkImageView()
                }
            }
        }
    }
}

struct XmarkImageView: View {
    var body: some View {
        Image(systemName: "xmark")
        .font(.largeTitle)
        .foregroundStyle(.white)
        .padding()
    }
}

#Preview {
    SheetsDemo()
}

#Preview {
    SecondView()
}
