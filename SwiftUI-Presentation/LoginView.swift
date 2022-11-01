//
//  LoginView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct LoginView: View {
    @State var phoneNumber: String = ""
    @State var passcode: String = ""
    @Binding var screenStack: [ScreenCreator]
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                TextField(" phone number", text: $phoneNumber)
                    .modifier(TextStyle())
                TextField(" passcode", text: $passcode)
                    .modifier(TextStyle())
                Spacer()
                    .frame(height: 50)
                Button("Login") {
                    screenStack.append(ScreenCreator(type: .home))
                }
                .modifier(ButtonStyle(width: geo.size.width*0.85))
            }
            .padding(20)
            .position(x:geo.size.width/2, y:geo.size.height/2)
        }
        .navigationTitle("LoginView")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(screenStack: .constant([ScreenCreator(type: .login)]))
    }
}
