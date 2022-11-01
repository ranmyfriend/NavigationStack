//
//  ContentView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var screenStack = [ScreenCreator]()
    
    var body: some View {
        NavigationStack(path: $screenStack) {
            PreLoginView(screenStack: $screenStack)
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: ScreenCreator.self) { screen in
                    switch screen.type {
                    case .login:
                        LoginView(screenStack: $screenStack)
                    case .signup:
                        SignupView(screenStack: $screenStack)
                    case .home:
                        HomeView(screenStack: $screenStack)
                    case .numView(let num):
                        NumView(num: num)
                    }
                }
                .navigationTitle("Navigation Stack")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
