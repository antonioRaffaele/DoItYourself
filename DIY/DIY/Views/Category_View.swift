//
//  Category_View.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//
// Aggiornamento 07/06 23.33 implementata la searchbar aggiustato il comportamento dei risultati
import SwiftUI



func tutorialsForACategory(category: Category) -> [Tutorial] {
    return associazioni.filter({ associazione in
        associazione.category.id == category.id
    }).map({ associazione in
        associazione.tutorial
    })
}

struct Category_View: View {
    @StateObject private var viewModel = CategoryViewModel()

    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach(viewModel.filteredCategories){ category in
                            NavigationLink(destination: Tutorial_View(TutorialsToDisplay: tutorialsForACategory(category: category))) {
                                VStack {
                                    Image(category.image).resizable().frame(maxWidth: 120, maxHeight: 120).scaledToFill()
                                        .padding()
                                        .background(Color("color2"))
                                        .cornerRadius(16)
                                    Text(category.name)
                                        .foregroundColor(Color.black)
                                }
                                .padding()
                            }
                            
                        }
                    }
                    .padding()
                }
                .searchable(text: $viewModel.searchText, prompt: "What you want to transform?")
                .navigationTitle("Categories")
            }
        
    }
}


struct Category_View_Previews: PreviewProvider {
    static var previews: some View {
        Category_View()
    }
}
