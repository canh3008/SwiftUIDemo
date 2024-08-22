//
//  CustomNavBarPreferenceKeys.swift
//  SwiftUIDemo
//
//  Created by Duc Canh on 20/08/2024.
//

import Foundation
import SwiftUI

struct CustomNavBarTitlePreferenceKeys: PreferenceKey {
    static var defaultValue: String = " "

    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarSubtitlePreferenceKeys: PreferenceKey {
    static var defaultValue: String = " "

    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarHideBackButtonPreferenceKeys: PreferenceKey {
    static var defaultValue: Bool = false

    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}
