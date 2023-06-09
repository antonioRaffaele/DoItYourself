//
//  Favorites_Tutorial.swift
//  DIY
//
//  Created by Viviana Pipola on 09/06/23.
//
import Foundation

import SwiftUI

class Favorites: ObservableObject, Equatable {
    static func == (lhs: Favorites, rhs: Favorites) -> Bool {
        return false
    }
    
    private var tutorials: Set<Int>
    let defaults = UserDefaults.standard
    
    init() {
        let decoder = JSONDecoder()
        if let data = defaults.value(forKey: "Favorites") as? Data {
            let tutorialsData = try? decoder.decode(Set<Int>.self, from: data)
            self.tutorials = tutorialsData ?? []
        } else {
            self.tutorials = []
        }
    }
    
    func getTaskIds() -> Set<Int> {
        return self.tutorials
    }
    
    func isEmpty() -> Bool {
        tutorials.count < 1
    }
    
    func contains(_ tutorial: Tutorial) -> Bool {
        tutorials.contains(tutorial.id)
    }
    
    func add(_ tutorial: Tutorial) {
        objectWillChange.send()
        tutorials.insert(tutorial.id)
        save()
    }
    
    func remove(_ tutorial: Tutorial) {
        objectWillChange.send()
        tutorials.remove(tutorial.id)
        save()
    }
    
    func save() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self.tutorials) {
            defaults.set(encoded, forKey: "Favorites")
        }
    }
}
