//
//  TextStyle.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
    }
}
