//
//  AnyTransitionDemo.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 13/08/2024.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    let rotation: CGFloat
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
    }
}

extension AnyTransition {
    static var rotating: AnyTransition {
     modifier(active: RotateViewModifier(rotation: 45),
                               identity: RotateViewModifier(rotation: 0))
    }

    static var rotateOn: AnyTransition {
        asymmetric(insertion: .rotating, removal: .move(edge: .leading))
    }
}

struct AnyTransitionDemo: View {

    @State private var showRectangle: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            if showRectangle {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 250, height: 300)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .transition(.move(edge: .leading))
//                    .modifier(RotateViewModifier(rotation: 45))
//                    .transition(AnyTransition.rotating)
                    .transition(.rotateOn)
            }

            Spacer()

            Text("Click Me")
                .withDefaultButtonFormatView(backgroundColor: .blue)
                .padding(.vertical, 50)
                .onTapGesture {
                    withAnimation(.easeOut(duration: 1)) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}

#Preview {
    AnyTransitionDemo()
}
