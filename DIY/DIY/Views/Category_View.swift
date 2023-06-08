//
//  Category_View.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//
// Aggiornamento 07/06 23.33 implementata la searchbar aggiustato il comportamento dei risultati
import SwiftUI

struct Category_View: View {
    @StateObject private var viewModel = CategoryViewModel()
    
    @State var tabSelection: Int = 0
    @State var tabArray = ["Home", "favorites"]
    
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
       
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach(viewModel.filteredCategories){ category in
                            NavigationLink(destination: Tutorial_View(category: "category")) {
                                VStack {
                                    Image(category.image).resizable().frame(maxWidth: 120, maxHeight: 120).scaledToFill()
                                        .padding()
                                        .background(Color.green.gradient)
                                        .cornerRadius(16)
                                    Text(category.name)
                                }
                                .padding()
                            }
                            
                        }
                    }
                    .padding()
                }
                .searchable(text: $viewModel.searchText, prompt: "Search")
                .navigationTitle("Categories")
            }
        
    }
}


struct Category_View_Previews: PreviewProvider {
    static var previews: some View {
        Category_View()
    }
}
