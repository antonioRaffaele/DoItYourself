//
//  Data.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import Foundation



//Le strutture sono tipi di dati complessi, cioè composti da più valori. Si crea quindi un'istanza della struct e si inseriscono i suoi valori, per poi passarla come un singolo valore nel codice.

//Quando si definisce una struct, Swift ne facilita la creazione perché genera automaticamente quello che viene chiamato memberwise initializer. In parole povere, significa che si crea la struct passando i valori iniziali per le sue due proprietà, come in questo caso:

let categoriesData: [Category] = [
    Category(name: "belt", image: "belt"),
    Category(name: "bra", image: "bra"),
    Category(name: "jacket", image: "jacket"),
    Category(name: "jeans", image: "jeans"),
    Category(name: "scarf", image: "scarf"),
    Category(name: "shirt", image: "shirt"),
    Category(name: "shorts", image: "shorts"),
    Category(name: "skirt", image: "clothes"),
    Category(name: "socks", image: "socks"),
    Category(name: "sweater", image: "sweater"),
    Category(name: "t-shirt", image: "tshirt"),
    Category(name: "Tie", image: "tie")
]

var tutorialsData: [Tutorial] = [
    Tutorial(id: 1, name: "Dalla cintura alla mensola vintage", image: "mensola_vintage", description: "bla bla bla", duration: 30, steps: [], categoryName: "belt", difficulty: "Easy"),
    Tutorial(id: 2, name: "Dalla cintura al portariviste", image: "portariviste_finito", description: "bla bla bla", duration: 20, steps: [], categoryName: "belt", difficulty: "Easy"),
   Tutorial(id: 3, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "I need: forbici, nastro, filo", duration: 20, steps: [], categoryName: "belt", difficulty: "Easy"),
    Tutorial(id: 4, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "bra", difficulty: "Easy"),
    Tutorial(id: 5, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "t-shirt", difficulty: "Easy")
]
