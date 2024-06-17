//
//  View+Extension.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 17/06/2024.
//

import SwiftUI

extension View {
    func cornerRadiusRectangle(radius: CGFloat) -> some View {
        self.clipShape(
            RoundedRectangle(cornerRadius: radius)
        )
    }
}
