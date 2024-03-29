//
//  CircleUserImageview.swift
//  InstaGram
//
//  Created by 이상민 on 3/27/24.
//

import SwiftUI

enum CircleSize{
    case big, small
    
    var dimension: CGFloat{
        switch self{
        case .big:
            return 80
        case .small:
            return 35
        }
    }
}

struct CircleUserImageview: View {
    let userImageName: String
    let size: CircleSize
    
    var body: some View {
        Image(userImageName)
            .resizable()
            .scaledToFill()
            .frame(width: size.dimension, height: size.dimension)
            .clipShape(Circle())
    }
}

#Preview {
    CircleUserImageview(userImageName: "cat1", size: .big)
}
