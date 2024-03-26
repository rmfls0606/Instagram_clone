//
//  ProfileContentGridView.swift
//  InstaGram
//
//  Created by 이상민 on 3/25/24.
//

import SwiftUI

struct ProfileContentGridView: View {
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
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimesion, height: imageDimesion)
                    .clipped()
            }
        })
    }
}

#Preview {
    ProfileContentGridView()
}
