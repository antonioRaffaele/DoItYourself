//
//  DataModel.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import Foundation

// Properties with no default values (Proprietà senza valori predefiniti)

struct Category :Identifiable {

    var id = UUID()
    var name: String
    var image: String

}

struct Tutorial :Identifiable {

    var id = UUID()
    var name: String
    var image: String
    var description: String
    var duration: Int
    //ad un tutorial corrispondono vari step , quindi la relazione è del tipo:
    // 1 a MOLTI, molti nel mio caso corrisponde agli step e per scrivere in codice questa cosa si fa così

    var steps: [Step]

    // [Step] in swift rappresenta un array, in questo caso uso l'array perchè devo rappresentare il lato MOLTI
}

struct Step :Identifiable {

    var id = UUID()
    var image: String
    var description: String

}

struct CategoryTutorial {

    // sto associando due entità: categoria e tutorial

    var category:Category
    var tutorial:Tutorial

}
