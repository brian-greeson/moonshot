//
//  ColorTheme.swift
//  moonshot
//
//  Created by Brian Greeson on 8/10/25.
//

import Foundation
import SwiftUICore

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.1)
    }
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.2)
    }
}
