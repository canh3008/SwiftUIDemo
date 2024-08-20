//
//  TabBarItem.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 19/08/2024.
//

import Foundation
import SwiftUI

enum TabBarItem: CaseIterable, Hashable {
    case home, favorite, profile

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorites"
        case .profile:
            return "Profile"
        }
    }

    var iconName: Image {
        switch self {
        case .home:
            return Image(systemName: "house")
        case .favorite:
            return Image(systemName: "heart")
        case .profile:
            return Image(systemName: "person")
        }
    }

    var color: Color {
        switch self {
        case .home:
            return .red
        case .favorite:
            return .blue
        case .profile:
            return .yellow
        }
    }
}
