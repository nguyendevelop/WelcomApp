//
//  CategoriesView.swift
//  WelcomApp
//
//  Created by Nguyen Dang Quy on 29/06/2022.
//

import SwiftUI

var tabs = ["All", "Indoor", "Outdoor", "Garden"]

struct CategoriesView: View {
    @State var selectedTab = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    CategoryBtn(text: tab, selected: $selectedTab, animation: animation)
                }
            }
            .padding(.vertical, 24)
        }
    }
}

struct CategoryBtn: View {
    var text: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring(), {
                selected = text
            })
            
        }) {
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(selected == text ? .white : .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack {
                    if (selected == text) {
                        Color(.black)
                            .cornerRadius(12)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                })
                
                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
        }

    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
