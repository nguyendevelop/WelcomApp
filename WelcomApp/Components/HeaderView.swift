//
//  HeaderView.swift
//  WelcomApp
//
//  Created by Nguyen Dang Quy on 28/06/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(.black)
            Spacer()
            Image("img_profile")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(20)
        }
    }
}
