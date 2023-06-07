//
//  CategoryViewModel.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//


import SwiftUI
import Combine

class CategoryViewModel: ObservableObject {
    @Published var categories: [Category] = []
    @Published var searchText: String = ""
    
    var filteredCategories: [Category] {
        guard !searchText.isEmpty else { return categories }

        return categories.filter { category in
            category.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    
        
    
    init() {
        fetchCategories()
    }
    
    func fetchCategories() {
        categories = [
            Category(name: "Belt", image: "belt"),
            Category(name: "Bra", image: "bra"),
            Category(name: "Jacket", image: "jacket"),
            Category(name: "Jeans", image: "jeans"),
            Category(name: "Scarf", image: "scarf"),
            Category(name: "Shirt", image: "shirt"),
            Category(name: "Shorts", image: "shorts"),
            Category(name: "Skirt", image: "clothes"),
            Category(name: "Socks", image: "socks"),
            Category(name: "Sweater", image: "sweater"),
            Category(name: "T-shirt", image: "tshirt"),
            Category(name: "Tie", image: "tie")
        ]
    }
}


