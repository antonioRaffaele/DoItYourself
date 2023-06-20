//
//  TutorialStepsView.swift
//  DIY
//
//  Created by Antonio Raffaele Sparano on 12/06/23.
//
//import SwiftUI
//
//struct TutorialStepsView: View {
//    let tutorial: Tutorial
//    @State private var selectedStepIndex = 0
//    @State private var isTutorialComplete = false
//
//    var body: some View {
//        VStack {
//            TabView(selection: $selectedStepIndex) {
//                ForEach(tutorial.steps.indices, id: \.self) { index in
//                    VStack(alignment: .leading) {
//                        Image(tutorial.steps[index].image)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: UIScreen.main.bounds.height * 0.42, height: UIScreen.main.bounds.height * 0.5)
//                            .clipped()
//                            .cornerRadius(20)
//
//                        Text(tutorial.steps[index].title)
//                            .fontWeight(.semibold)
//                            .padding()
//
//                        Text(tutorial.steps[index].description)
//                            .font(.system(size: 14))
//                            .padding()
//
//                        Spacer()
//
//                        HStack {
//                            Spacer()
//                            Button(action: {
//                                if index < tutorial.steps.count - 1 {
//                                    selectedStepIndex = index + 1
//                                } else {
//                                    isTutorialComplete = true
//                                }
//                            }) {
//                                Text("Next")
//                                    .font(.headline)
//                                    .padding()
//                                    .foregroundColor(.white)
//                                    .background(Color("color1"))
//                                    .cornerRadius(10)
//                            }
//                            .padding()
//                            .sheet(isPresented: $isTutorialComplete) {
//                                CongratulationsView(tutorial: tutorial) // creo nuova sheet per mostrare congrats e tip perché non sono riuscito a far funzionare lo swipe                                            automatico nel momento in cui si preme il tasto "Next"
//                            }
//                        }
//                    }
//                    .padding()
//                    .cornerRadius(10)
//                }
//            }
//            .tabViewStyle(PageTabViewStyle())
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//        }
//
//            Text("Step \(selectedStepIndex + 1) of \(tutorial.steps.count)")
//                .font(.headline)
//                .padding(.top, 10)
//        }
//    }

import SwiftUI

struct TutorialStepsView: View {
    let tutorial: Tutorial
    @State private var selectedStepIndex = 0
    @State private var isTutorialComplete = false
    
    var isLastStep: Bool {
        selectedStepIndex == tutorial.steps.count - 1
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selectedStepIndex) {
                ForEach(tutorial.steps.indices, id: \.self) { index in
                    VStack(alignment: .leading) {
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
                            .font(.system(size: 14))
                            .padding()
                        
                        Spacer()
                        
                        if isLastStep {
                             
                                Spacer()
                                Button(action: {
                                    isTutorialComplete = true
                                }) {
                                    Text("Completed")
                                        .font(.headline)
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(Color("color1"))
                                        .cornerRadius(10)
                                }
                            
                                .frame(maxWidth: .infinity)
                                .padding(.bottom, 24)
                                .sheet(isPresented: $isTutorialComplete) {
                                    CongratulationsView(tutorial: tutorial)
                                }
                            
                            
                        }
                        
                    }
                    .padding()
                    .cornerRadius(10)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        
        Text("Step \(selectedStepIndex + 1) of \(tutorial.steps.count)")
            .font(.headline)
            .padding(.top, 10)
    }
}






