//
//  HomeScreenView.swift
//  WelcomApp
//
//  Created by Nguyen Dang Quy on 28/06/2022.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            Color("bg_color")
                .ignoresSafeArea()
            VStack {
                HeaderView()
                CategoriesView()
                
                SectionTitleView(title: "Recomended")
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 16) {
                        RecommendPlantCardView(title: "Oscar Plant", price: 50, image: "img_product_chair")
                        RecommendPlantCardView(title: "Twiny Plant", price: 70, image: "img_product_chair")
                        RecommendPlantCardView(title: "Yelies Plant", price: 60, image: "img_product_chair")
                        RecommendPlantCardView(title: "Rail Plant", price: 50, image: "img_product_chair")
                    }
                }
            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

struct RecommendPlantCardView: View {
    var title: String
    var price: Int
    var image: String
    var body: some View {
        VStack (alignment: .leading) {
            ZStack (alignment: .topTrailing) {
                Image("logo")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .cornerRadius(8)
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit) //default 1
            }
            
            VStack (alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.black))
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.black).opacity(0.5))
                }
                Text("$\(price)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Secondary"))
                
                Spacer()
                
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(.all, 8)
                    .background(Color(.black))
                    .cornerRadius(30)
                    .onTapGesture {
                        
                    }
            }
            .padding()
        }
        
        .frame(width: 150, height: 150)
        .background(Color.white)
        .cornerRadius(20.0)
        .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
    }
}
