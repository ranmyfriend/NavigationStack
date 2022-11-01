//
//  HomeView.swift
//  SwiftUI-Presentation
//
//  Created by BKS-GGS on 28/09/22.
//

import SwiftUI

struct HomeView: View {
    @Binding var screenStack: [ScreenCreator]
    @State private var numbers =  1...100
    
    var body: some View {
        NavigationView {
            List {
                ForEach(numbers, id: \.self) { num in
                    Button {
                        screenStack.append(ScreenCreator(type: .numView(num: "\(num)")))
                    } label: {
                        Text("\(num)")
                    }
                }
                .foregroundColor(.black)
            }
            .toolbar {
                Button("Logout") {
                    screenStack = []
                }
                .foregroundColor(.red)
            }
        }
        .navigationTitle("Home View")
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(screenStack: .constant([ScreenCreator(type: .home)]))
    }
}
