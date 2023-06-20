//
//  LoadingView.swift
//  DIY
//
//  Created by Roberto Gambardella on 20/06/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Image("AppIcon1")
                .resizable()
                .frame(width: 240, height: 240)
            
            Text("Give your clothes a new life!")
                .font(.system(size: 26, weight: .bold))
                .foregroundColor(Color("color1"))
                .padding(.bottom, 40)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("color2"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .environmentObject(ViewModel())
    }
}
