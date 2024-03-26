//
//  ProfileContentBtnModifier.swift
//  InstaGram
//
//  Created by 이상민 on 3/22/24.
//

import SwiftUI

struct ProfileContentBtnModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .imageScale(.large)
            .frame(width: 25, height: 25)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
    }
}
