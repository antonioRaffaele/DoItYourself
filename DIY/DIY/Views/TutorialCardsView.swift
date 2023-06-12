//
//  Tutorial_View.swift
//  Esempio
//
//  Created by Viviana Pipola on 07/06/23.
//
import SwiftUI

struct TutorialCardsView: View {
    @EnvironmentObject var viewModel: ViewModel
    var tutorials: [Tutorial]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(tutorials) { tutorial in
                    HStack(spacing: 10) {
                        Image(tutorial.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 260, height: 260)
                            .frame(width: UIScreen.main.bounds.height * 0.20, height: UIScreen.main.bounds.height * 0.20)
                            .cornerRadius(0)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Spacer()
                                Button(action: {
                                    viewModel.didTapFavorite(tutorial: tutorial)
                                }) {
                                    if viewModel.isFavorite(tutorial: tutorial) {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color("color1"))
                                    } else {
                                        Image(systemName: "star")
                                            .foregroundColor(Color("color1"))
                                    }
                                }
                                .padding(.trailing, 10)
                                .buttonStyle(PlainButtonStyle())
                            }
                            
                            Text(tutorial.name)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(tutorial.description)
                                .font(.subheadline)
                            
                            HStack {
                                Text(tutorial.difficulty)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            
                            Text(String(tutorial.duration))
                        }
                    }
                    .background(Color("color2"))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}





struct TutorialsView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialCardsView(tutorials: tutorialsData).environmentObject(ViewModel())
    }
}
