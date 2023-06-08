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
            Category(id: 1, name: "Belt", image: "belt"),
            Category(id: 2, name: "Bra", image: "bra"),
            Category(id: 3, name: "Jacket", image: "jacket"),
            Category(id: 4, name: "Jeans", image: "jeans"),
            Category(id: 5, name: "Scarf", image: "scarf"),
            Category(id: 6, name: "Shirt", image: "shirt"),
            Category(id: 7, name: "Shorts", image: "shorts"),
            Category(id: 8, name: "Skirt", image: "clothes"),
            Category(id: 9, name: "Socks", image: "socks"),
            Category(id: 10, name: "Sweater", image: "sweater"),
            Category(id: 11, name: "T-shirt", image: "tshirt"),
            Category(id: 12, name: "Tie", image: "tie")
        ]
    }
}


