//
//  Category_View.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//
// Aggiornamento 07/06 23.33 implementata la searchbar aggiustato il comportamento dei risultati
import SwiftUI

struct CategoriesView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(viewModel.filteredCategories){ category in
                        NavigationLink(destination: TutorialCardsView(tutorials: viewModel.fetchTutorials(category: category))) {
                            VStack {
                                Image(category.image).resizable().frame(maxWidth: 120, maxHeight: 120).scaledToFill()
                                    .padding()
                                    .background(Color("color2"))
                                    .cornerRadius(16)
                                Text(category.name.capitalized)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            .searchable(text: $viewModel.searchText, prompt: "Search for a garment")
            .navigationTitle("What to transform")
        }
    }
    
}



struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView().environmentObject(ViewModel())
    }
}
