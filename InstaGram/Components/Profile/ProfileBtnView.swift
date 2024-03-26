//
//  ProfileBtnView.swift
//  InstaGram
//
//  Created by 이상민 on 3/21/24.
//

import SwiftUI

struct ProfileBtnView: View {
    var text: String
    var body: some View {
        Button(action: {
            // TODO: 프로필 편집
        }, label: {
            Text(text)
                .font(.callout)
                .fontWeight(.semibold)
        })
        .foregroundColor(Color("modeColorBlackWhite"))
        .frame(maxWidth: .infinity, minHeight: 35)
        .background(.gray)
        .cornerRadius(10)
    }
}

#Preview {
    ProfileBtnView(text: "프로필 편집")
}
