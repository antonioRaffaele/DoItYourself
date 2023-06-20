//
//  DataModel.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 07/06/23.
//

import Foundation

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct Tutorial: Identifiable {
    var id: Int
    var name: String
    var image: String
    var description: String
    var duration: String
    var steps: [Step]
    var categoryName: String
    var difficulty: String
//    var congrats: [Conclusion]
}

struct Step: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    
}

//struct Conclusion: Identifiable {
//    var id = UUID()
//    var conclusionText: String
//    var subtitleText: String
//    var tipText: String
//}
