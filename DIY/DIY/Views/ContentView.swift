//
//  ContentView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var selectedTutorial: Tutorial? = nil

    var body: some View {
        TabView {
            CategoriesView()
                .tabItem {
                    Label("Wardrobe", systemImage: "cabinet.fill")
                }
            TutorialCardsView(tutorials: viewModel.favorites)
                          .environmentObject(viewModel)
                .tabItem {
                    Label("Favourites", systemImage: "star")
                    
                }

            
        }  .accentColor(Color("color1"))
            .sheet(item: $selectedTutorial) {
                tutorial in TutorialStepsView(tutorial: tutorial)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
