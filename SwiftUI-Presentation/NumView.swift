//
//  NumView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct NumView: View {
    let num: String
    var body: some View {
        Text(num)
            .font(.system(size: 64))
            .foregroundColor(.blue)
    }
}

struct NumView_Previews: PreviewProvider {
    static var previews: some View {
        NumView(num: "22")
    }
}
