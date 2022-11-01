//
//  ScreenCreator.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import Foundation

enum ScreenType {
    case login
    case signup
    case home
    case numView(num: String)
}

struct ScreenCreator: Identifiable {
    let id = UUID()
    let type: ScreenType
}

extension ScreenCreator: Equatable, Hashable {
    static func == (lhs: ScreenCreator, rhs: ScreenCreator) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
