//
//  WelcomScreenView.swift
//  WelcomApp
//
//  Created by Nguyen Dang Quy on 28/06/2022.
//

import SwiftUI

struct WelcomScreenView: View {
    var body: some View {
        ZStack {
            Image("img_background")
                .resizable()
            
                .overlay(LinearGradient(colors: [Color.black.opacity(0.45), Color.black.opacity(0.95)], startPoint: .topLeading, endPoint: .bottomLeading))
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Image("logo")
                Text("@nguyendevelop")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
                Text("Make Your")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Text("Home Beautiful")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text("Can always make you the best \nexperience here")
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(.vertical,8)
                
                Spacer()
                
                HStack {
                    Spacer()
                    NextBtn()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomScreenView()
    }
}

struct NextBtn: View {
    var body: some View {
        HStack {
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(.black)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(50)
    }
}

struct WelcomScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomScreenView()
    }
}
