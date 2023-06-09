//
//  Data.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import Foundation



//Le strutture sono tipi di dati complessi, cioè composti da più valori. Si crea quindi un'istanza della struct e si inseriscono i suoi valori, per poi passarla come un singolo valore nel codice.

//Quando si definisce una struct, Swift ne facilita la creazione perché genera automaticamente quello che viene chiamato memberwise initializer. In parole povere, significa che si crea la struct passando i valori iniziali per le sue due proprietà, come in questo caso:


let belt = Category(id: 1, name: "Belt", image: "belt")
let bra = Category(id: 2, name: "Bra", image: "bra")
let jacket = Category(id: 3, name: "Jacket", image: "jacket")
let jeans = Category(id: 4, name: "Jeans", image: "jeans")
let scarf = Category(id: 5, name: "Scarf", image: "scarf")
let shirt = Category(id: 6, name: "Shirt", image: "shirt")
let shorts = Category(id: 7, name: "Shorts", image: "shorts")
let skirt = Category(id: 8, name: "Skirt", image: "clothes")
let socks = Category(id: 9, name: "Socks", image: "socks")
let sweater = Category(id: 10, name: "Sweater", image: "sweater")
let t_shirt = Category(id: 11, name: "T-Shirt", image: "tshirt")
let tie = Category(id: 12, name: "Tie", image: "tie")

// raccolta di tutte le istanze delle categorie
let categories: [Category] = [

    belt,bra,jacket,jeans,scarf,shirt,shorts,skirt,socks,sweater,t_shirt,tie

]

let tut1 = Tutorial(id: 1, name: "Dalla cintura alla mensola vintage", image: "mensola_vintage", description: "bla bla bla", duration: 30, steps: [])

let tut2 = Tutorial(id: 2, name: "Dalla cintura al portariviste", image: "portariviste_finito", description: "bla bla bla", duration: 20, steps: [])

let tut3 = Tutorial(id: 3, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [])

let tuttiITutorial: [Tutorial] = [
    tut1,tut2,tut3
]


//istanzio le associazioni

let associazioni: [CategoryTutorial] = [
    
    CategoryTutorial(category: belt, tutorial: tut1),
    
    CategoryTutorial(category: belt, tutorial: tut2),
   
    CategoryTutorial(category: belt, tutorial: tut3),
    
    
]
