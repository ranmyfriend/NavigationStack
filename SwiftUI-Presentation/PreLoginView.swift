//
//  PreLoginView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct PreLoginView: View {
    @Binding var screenStack: [ScreenCreator]
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                Button("Login") {
                    screenStack.append(ScreenCreator(type:.login))
                }
                .modifier(ButtonStyle(width: geo.size.width*0.85))
                
                Button("Signup") {
                    screenStack.append(ScreenCreator(type:.signup))
                }
                .modifier(ButtonStyle(width: geo.size.width*0.85))
                
                Button("Anonymous") {
                    screenStack.append(ScreenCreator(type:.home))
                }
                .modifier(ButtonStyle(width: geo.size.width*0.85))
            }
            .position(x:geo.size.width/2,
                      y:geo.size.height/2)
        }
    }
}

struct PreLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PreLoginView(screenStack: .constant([ScreenCreator(type: .login)]))
    }
}
