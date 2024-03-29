//
//  PlusBtnIconView.swift
//  InstaGram
//
//  Created by 이상민 on 3/21/24.
//

import SwiftUI

struct PlusBtnIconView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        Image(systemName: "plus")
            .font(.callout)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 25, height: 25)
            .background(.blue)
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(lineWidth: 4)   
                    .foregroundColor(colorScheme == .dark ? .black : .white)
            }
    }
}

#Preview {
    PlusBtnIconView()
}
