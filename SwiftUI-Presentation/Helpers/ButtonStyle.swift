//
//  ButtonStyle.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    let width: Double
    let height: Double = 50
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
            )
    }
}

