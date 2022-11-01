//
//  SignupView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct SignupView: View {
    @State var name: String = ""
    @State var phoneNumber: String = ""
    @Binding var screenStack: [ScreenCreator]
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                TextField(" name", text: $name)
                    .modifier(TextStyle())
                TextField(" phone number", text: $phoneNumber)
                    .modifier(TextStyle())
                Spacer()
                    .frame(height: 50)
                Button("Signup") {
                    screenStack.append(ScreenCreator(type: .home))
                }
                .modifier(ButtonStyle(width: geo.size.width*0.85))
            }
            .padding(20)
            .position(x:geo.size.width/2,
                      y:geo.size.height/2)
        }
        .navigationTitle("SignupView")
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(screenStack: .constant([ScreenCreator(type: .signup)]))
    }
}
