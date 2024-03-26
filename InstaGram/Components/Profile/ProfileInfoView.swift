//
//  ProfileInfoView.swift
//  InstaGram
//
//  Created by 이상민 on 3/20/24.
//

import SwiftUI

struct ProfileInfoView: View {
    let count: Int
    let text: String
    var body: some View {
        VStack{
            Text("\(count)")
                .fontWeight(.bold)
            Text(text)
                .fontWeight(.semibold)
        }//: VSTACK
        .font(.callout)
        .padding(.horizontal)
    }
}

#Preview {
    ProfileInfoView(count: 1, text: "게시물")
}
