//
//  CongratsView.swift
//  DIY
//
//  Created by Roberto Gambardella on 20/06/23.
//
import SwiftUI


//struct CongratulationsView: View {
//    let tutorial: Tutorial
//    var conclusionText: String
//    var subtitleText: String
//    var tipText: String // 211 caratteri al max
//
//        var body: some View {
//            VStack {
//                Spacer()
//
//                Text(conclusionText)
//                    .padding(.bottom, 40)
//
//                Text(subtitleText)
//                    .foregroundColor(.black)
//                    .padding(.bottom, 70)
//
//                ZStack {
//                    Rectangle()
//                        .stroke(Color.green, lineWidth: 6)
//                        .opacity(0.7)
//                        .frame(width: 300, height: 220)
//                        .overlay(
//                            Text(tipText)
//                                .multilineTextAlignment(.leading)
//                                .font(.system(size: 20))
//                                .font(.body)
//                                .foregroundColor(.black)
//                                .fontWeight(.thin)
//                                .padding()
//
//                        )
//                }
//
//
//
//                Spacer()
//
//                ZStack  {
//
//                    Button(action: {
//                                // Azione del bottone
//                            }) {
//                                Text("Back to DIY")
//                                    .foregroundColor(.black)
//                                    .font(.headline)
//                                    .padding()
//                                    .frame(width: 200, height: 50)
//                                    .background(Color.green)
//                                    .cornerRadius(40)
////                                     .shadow(
////                                        color: Color.black, radius: 30, x:30,
////                                        y:10)
//                            }
//                            .frame(maxWidth: .infinity) // Occupa tutta la larghezza disponibile
//                            .padding(.bottom, 64) // Aggiunge uno spazio inferiore al bottone
//                            // .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
//                            .padding(.bottom) // Aggiunge uno spazio inferiore tra il bottone e il resto del contenuto
//                }
//
//
//            }
//            .padding(.top, 80) // Regola la distanza dal bordo superiore
//
//        }
//
//        }

struct CongratulationsView: View {
    let tutorial: Tutorial
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Great Work!")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text("You have just created a / an \(tutorial.name).")
                .font(.headline)
                .padding()
                .font(.system(size: 22))
            
            ZStack {
                                Rectangle()
                                    .stroke((Color("color1")), lineWidth: 6)
                                    .opacity(0.9)
                                    .frame(width: 300, height: 220)
                                    .overlay(
                                        Text("Did you know that...")
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size: 20))
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                            .fontWeight(.thin)
                                            .padding()
            
                                    )
                            }
            
            Spacer()
        }
    }
}

