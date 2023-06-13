//
//  TutorialStepsView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 12/06/23.
//
import SwiftUI

struct TutorialStepsView: View {
    let tutorial: Tutorial
    
    var body: some View {
        VStack {
            Text("Tutorial Steps")
                .font(.largeTitle)
                .bold()
                .padding()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(tutorial.steps) { step in
                        VStack(spacing: 10) {
                            Image(step.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            Text(step.description)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        .background(Color("color2"))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}
