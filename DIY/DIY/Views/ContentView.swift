//
//  ContentView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 08/06/23.
//

import SwiftUI

let gestoreFavoriti = Favorites()

func tutorialsInFavorites() -> [Tutorial] {
    return tuttiITutorial.filter({ tutorial in
        gestoreFavoriti.contains(tutorial)
    })
}

struct ContentView: View {
    @State var tutorialPrferiti = tutorialsInFavorites()
    
    var body: some View {
        TabView {
            Category_View()
                .tabItem {
                    Label("Received", systemImage: "house")
                        
                }
            Tutorial_View(TutorialsToDisplay: tutorialPrferiti)
                .tabItem {
                    Label("Saved", systemImage: "star")
                        
                }
                .onChange(of: gestoreFavoriti) { _ in
                    tutorialPrferiti = tutorialsInFavorites()
                }
        }  .accentColor(Color("color1"))
    } 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
