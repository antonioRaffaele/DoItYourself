//
//  Data.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import Foundation



//Le strutture sono tipi di dati complessi, cioè composti da più valori. Si crea quindi un'istanza della struct e si inseriscono i suoi valori, per poi passarla come un singolo valore nel codice.

//Quando si definisce una struct, Swift ne facilita la creazione perché genera automaticamente quello che viene chiamato memberwise initializer. In parole povere, significa che si crea la struct passando i valori iniziali per le sue due proprietà, come in questo caso:


let belt = Category(name: "Belt", image: "belt")
let bra = Category(name: "Bra", image: "bra")
let jacket = Category(name: "Jacket", image: "jacket")
let jeans = Category(name: "Jeans", image: "jeans")
let scarf = Category(name: "Scarf", image: "scarf")
let shirt = Category(name: "Shirt", image: "shirt")
let shorts = Category(name: "Shorts", image: "shorts")
let skirt = Category(name: "Skirt", image: "clothes")
let socks = Category(name: "Socks", image: "socks")
let sweater = Category(name: "Sweater", image: "sweater")
let t_shirt = Category(name: "T-Shirt", image: "tshirt")
let tie = Category(name: "Tie", image: "tie")

// raccolta di tutte le istanze delle categorie
let categories: [Category] = [

    belt,bra,jacket,jeans,scarf,shirt,shorts,skirt,socks,sweater,t_shirt,tie

]
