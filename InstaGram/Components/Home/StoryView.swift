//
//  StoryView.swift
//  InstaGram
//
//  Created by 이상민 on 3/28/24.
//

import SwiftUI

struct StoryView: View {
    let text: String
    var body: some View {
        VStack{
            CircleUserImageview(userImageName: "cat1", size: .big)
            Text(text)
                .font(.footnote)
        }//: VSTACK
    }
}

#Preview {
    StoryView(text: "내 스토리")
}
