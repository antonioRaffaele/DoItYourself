//
//  Category_View.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import SwiftUI

struct Category_View: View {
    @StateObject var viewModel = CategoryViewModel()
    
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(viewModel.categories){ category in
                        NavigationLink(destination: Tutorial_View(category: "category")) {
                            VStack {
                                Image(category.image).resizable().frame(maxWidth: 120, maxHeight: 120).scaledToFill()
                                    .padding()
                                    .background(Color.purple)
                                    .cornerRadius(16)
                                Text(category.name)
                            }
                            .padding()
                        }
                        .searchable(text: $viewModel.searchText)
                    }
                }
                .padding()
            }.navigationTitle("Categories")
                .frame(alignment: .leading)
            
            
            // View, ossia come utilizzare i dati per disegnare l'interfaccia
            /*
             VStack {
             // metto ForEach xkè devo utilizzare tutte le istanze delle categorie che sono nella raccolta delle istanze che ho chiamato nei DATA , categories
             
             ForEach(categories){ category in
             
             Text(category.name)
             
             
             
             
             }
             }
             */
        }
    }
}



struct Category_View_Previews: PreviewProvider {
    static var previews: some View {
        Category_View()
    }
}
