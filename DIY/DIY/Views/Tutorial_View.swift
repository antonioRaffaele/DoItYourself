//
//  Tutorial_View.swift
//  Esempio
//
//  Created by Viviana Pipola on 07/06/23.
//

import SwiftUI

struct Tutorial_View: View {
    
    @State var TutorialsToDisplay: [Tutorial]
    
    var body: some View {
        ScrollView {
            VStack{
                ForEach(TutorialsToDisplay) { display in
                    HStack{
                        
                        Image(display.image).resizable().frame(maxWidth: 120, maxHeight: 120).scaledToFill()
                            .cornerRadius(16)
                            .padding()
                        VStack {
                            
                            Text(display.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Text(display.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            HStack {
                                Text(String(display.duration))
                            }
                            Text("SALVARE").onTapGesture {
                                let gestoreFavoriti = Favorites()
                                gestoreFavoriti.add(display)
                                gestoreFavoriti.save()
                            }
                        }
                    }
                    .background(Color.purple)
                    .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}



//Tutorial di esempio

let Tutorial_Di_Esempio = [
    Tutorial(id: 1, name: "From t-shirt to bag", image: "borsa_finita", description: "bla bla bla", duration: 30, steps: []),
    Tutorial(id: 2, name: "From ties to skirts", image: "step_1", description: "bla bla bla", duration: 20, steps: [])
]

struct Tutorial_View_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial_View(TutorialsToDisplay: Tutorial_Di_Esempio)
    }
}
