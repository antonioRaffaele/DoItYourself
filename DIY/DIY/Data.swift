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
    Category(name: "top", image: "tshirt"),
    Category(name: "Tie", image: "tie")
]

var tutorialsData: [Tutorial] = [
    Tutorial(id: 1, name: "Dalla cintura alla mensola vintage", image: "mensola_vintage", description: "bla bla bla", duration: 30, steps: [], categoryName: "belt", difficulty: "Easy"),
    Tutorial(id: 2, name: "Dalla cintura al portariviste", image: "portariviste_finito", description: "bla bla bla", duration: 20, steps: [], categoryName: "belt", difficulty: "Easy"),
   Tutorial(id: 3, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "I need: forbici, nastro, filo", duration: 20, steps: [], categoryName: "belt", difficulty: "Easy"),
    Tutorial(id: 4, name: "Dalla cintura alla sedia rivestita", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "bra", difficulty: "Easy"),
    Tutorial(id: 5, name: "shorts1", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "shorts", difficulty: "Easy"),
    Tutorial(id: 6, name: "jeans1", image: "portariviste_finito", description: "bla bla bla", duration: 20, steps: [], categoryName: "jeans", difficulty: "Easy"),
   Tutorial(id: 7, name: "jeans2", image: "sedia_rivestita", description: "I need: forbici, nastro, filo", duration: 20, steps: [], categoryName: "jeans", difficulty: "Easy"),
    Tutorial(id: 8, name: "shirt1", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "shirt", difficulty: "Easy"),
    Tutorial(id: 9, name: "shirt2", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "shirt", difficulty: "Easy"),
    Tutorial(id: 10, name: "skirt1", image: "portariviste_finito", description: "bla bla bla", duration: 20, steps: [], categoryName: "skirt", difficulty: "Easy"),
   Tutorial(id: 11, name: "socks1", image: "sedia_rivestita", description: "I need: forbici, nastro, filo", duration: 20, steps: [], categoryName: "socks", difficulty: "Easy"),
    Tutorial(id: 12, name: "sweater1", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "sweater", difficulty: "Easy"),
    Tutorial(id: 13, name: "sweater2", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "sweater", difficulty: "Easy"),
    Tutorial(id: 14, name: "T-Bag", image: "tshirt_borsa_final", description: "I need: scissors, needle, thread", duration: 20, steps: [Step(image: "tshirt_borsa_step_1", title: "Step 1: Creating a rect strip", description: "As a first step, fold the T-shirt in two lengthwise and cut under the sleeve, removing the top. This way, when opening the T-shirt, you will get a rectangular strip of fabric."), Step(image: "tshirt_borsa_step_2", title: "Step 2: Rounding the rectangle", description: "Now round the rectangle by cutting off the top corners. At this point turn the fabric inside out and start sewing and turn the fabric inside out again."), Step(image: "tshirt_borsa_step_3", title: "Step 3: Creating the bag handle", description: "Complete by creating the handle of the bag, just fold the bag in two, always lengthwise, and make a cut of about 2 inches with the scissors.")], categoryName: "top", difficulty: "Easy"),
   Tutorial(id: 15, name: "top2", image: "sedia_rivestita", description: "I need: forbici, nastro, filo", duration: 20, steps: [], categoryName: "top", difficulty: "Easy"),
    Tutorial(id: 16, name: "top3", image: "sedia_rivestita", description: "bla bla bla", duration: 20, steps: [], categoryName: "top", difficulty: "Easy")
]
