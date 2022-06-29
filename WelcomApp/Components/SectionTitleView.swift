//
//  SectionTitleView.swift
//  WelcomApp
//
//  Created by Nguyen Dang Quy on 29/06/2022.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    var body: some View {
        HStack {
            //Text("Recomended")
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color(.black))
            Spacer()
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(Color(.black).opacity(0.5))
        }
    }
}

//
//struct SectionTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionTitleView()
//    }
//}
