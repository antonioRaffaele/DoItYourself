//
//  TutorialStepsView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 12/06/23.
//
import SwiftUI

struct TutorialStepsView: View {
    let tutorial: Tutorial
    @State private var selectedStepIndex = 0
    
    var body: some View {
        VStack {
            
            
            TabView(selection: $selectedStepIndex) {
                ForEach(tutorial.steps.indices, id: \.self) { index in
//                    ScrollView {
//                        VStack(spacing: 10) {
//                            Image(tutorial.steps[index].image)
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//
//                            Text(tutorial.steps[index].description)
//                                .font(.headline)
//                                .multilineTextAlignment(.center)
//                        }
//                        .padding()
//                        .background(Color("color2"))
//                        .cornerRadius(10)
//                    }
                    VStack (alignment: .leading){
                        Image(tutorial.steps[index].image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.height * 0.42, height: UIScreen.main.bounds.height * 0.5)
                            .clipped()
                            .cornerRadius(20)
                        
                        Text(tutorial.steps[index].title)
                            
                            .fontWeight(.semibold)
                            .padding()
                        
                        Text(tutorial.steps[index].description)
                            
                            .padding()
                        
                        Spacer()
                    }
                    .padding()
                    .cornerRadius(10)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            Text("Step \(selectedStepIndex + 1) of \(tutorial.steps.count)")
                .font(.headline)
                .padding(.top, 10)
        }
    }
}

