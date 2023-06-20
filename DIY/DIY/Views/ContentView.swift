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
    @State private var showLoadingView = true // Aggiunto lo stato per mostrare/nascondere la schermata di caricamento
    
    var body: some View {
        ZStack {
            if showLoadingView {
                LoadingView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {  // Aggiunto .onAppear con deadline per far sì che la visione della schermata duri per un tempo prestabilito, espresso in secondi
                            showLoadingView = false
                        }
                    }
            } else {
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
                }
                .accentColor(Color("color1"))
                .sheet(item: $selectedTutorial) { tutorial in
                    TutorialStepsView(tutorial: tutorial)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
