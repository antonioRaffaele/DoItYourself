//
//  DIYApp.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import SwiftUI

@main
struct YourApp: App {
    @StateObject private var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
