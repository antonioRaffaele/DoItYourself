//
//  ContentView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Category_View()
                .tabItem {
                    Label("Received", systemImage: "house")
                }
            FavoritesView()
                .tabItem {
                    Label("Sent", systemImage: "star")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
