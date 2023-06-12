//
//  ContentView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        TabView {
            CategoriesView()
                .tabItem {
                    Label("Received", systemImage: "house")
                }
            TutorialCardsView(tutorials: viewModel.favorites)
                          .environmentObject(viewModel)
                .tabItem {
                    Label("Favourites", systemImage: "star")
                }
        }  .accentColor(Color("color1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
