//
//  Favorites_Tutorial.swift
//  DIY
//
//  Created by Viviana Pipola on 09/06/23.
//
import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var categories: [Category] = []
    @Published var searchText: String = ""
    @Published var favorites: [Tutorial] = []
    @Published var tutorials: [Tutorial] = []
    
    func isFavorite(tutorial: Tutorial) -> Bool {
            return favoriteTutorialsID.contains(tutorial.id)
        }

    let userDefaults = UserDefaults.standard
    var favoriteTutorialsID: [Int] = UserDefaults.standard.object(forKey: "favoriteTutorialsID") as? [Int] ?? []

    var filteredCategories: [Category] {
        guard !searchText.isEmpty else { return categories }

        return categories.filter { category in
            category.name.localizedCaseInsensitiveContains(searchText)
        }
    }

    init() {
        fetchCategories()
        fetchFavorites()
    }

    func fetchCategories() {
        categories = categoriesData
    }

    func fetchTutorials(category: Category) -> [Tutorial]{
        return tutorialsData.filter {
            tutorial in tutorial.categoryName.localizedCaseInsensitiveContains(category.name)
        }
    }

    func fetchFavorites(){
        for tutorial in tutorialsData{
            if favoriteTutorialsID.contains(where: {$0 == tutorial.id}){
                favorites.append(tutorial)
            }
        }
    }

    func didTapFavorite(tutorial: Tutorial){
        
        


            if !favoriteTutorialsID.contains(where: {$0 == tutorial.id}){
                
                
                    
                favoriteTutorialsID.append(tutorial.id)
                userDefaults.set(favoriteTutorialsID, forKey: "favoriteTutorialsID")
                favorites.append(tutorial)

                
            }else{
                if let index = favoriteTutorialsID.firstIndex(where: {$0 == tutorial.id}){
                    favoriteTutorialsID.remove(at: index)
                    userDefaults.set(favoriteTutorialsID, forKey: "favoriteTutorialsID")
                }
                if let index = favorites.firstIndex(where: {$0.id == tutorial.id}){
                    favorites.remove(at: index)
                }
                
                
            }
        }
    }
