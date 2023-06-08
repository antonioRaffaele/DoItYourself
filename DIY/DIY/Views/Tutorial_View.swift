//
//  Tutorial_View.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import SwiftUI



struct Tutorial_View: View {
    let category: String
    
    var body: some View {
        Text("Tutorial for \(category)")
            .font(.title)
    }
}


//struct Tutorial_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Tutorial_View()
//    }
//}
