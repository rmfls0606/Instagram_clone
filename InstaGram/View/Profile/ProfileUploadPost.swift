//
//  ProfileUploadPost.swift
//  InstaGram
//
//  Created by 이상민 on 3/24/24.
//

import SwiftUI

struct ProfileUploadPost: View {
    //MARK: - Property
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    private let imageDimesion = (UIScreen.main.bounds.width/3) - 1
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 1, content: {
            ForEach(0..<20){ idx in
                Image("venom")
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimesion, height: imageDimesion)
                    .clipped()
            }
        })
    }
}

#Preview {
    ProfileUploadPost()
}
