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
            
            Image(tutorial.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.height * 0.4, height: UIScreen.main.bounds.height * 0.45)
                .cornerRadius(20)
            
            Text("Great Work!")
                .font(.title)
                .fontWeight(.bold)
            
            Text("You have just created an amazing \(tutorial.name).")
                .font(.headline)
                .padding()
                .font(.system(size: 22))
            
            ZStack {
                                Rectangle()
                                    .stroke((Color("color1")), lineWidth: 6)
                                    .opacity(0.8)
                                    .frame(width: 300, height: 220)
                                    .overlay(
                                        Text("Did you know that? Recycled polyester fibers, also called rPet, are made through recycling plastic bottles and more. Although fabrics made from this fiber are not natural, recycling generates 54 percent less CO2 emissions into the atmosphere.")
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size: 18))
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                            .fontWeight(.thin)
                                            .padding()
            
                                    ) .padding(.bottom, 80)
                            }  .padding(.bottom, 100)
            
            Spacer()
        }              .padding(.top, 180)
    }
}



