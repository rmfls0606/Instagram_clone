//
//  UserPlustBtnView.swift
//  InstaGram
//
//  Created by 이상민 on 3/28/24.
//

import SwiftUI

struct UserPlustBtnView: View {
    var body: some View {
        CircleUserImageview(userImageName: "venom", size: .big)
            .overlay {
                PlusBtnIconView()
                    .vBottom()
                    .hTrailing()
            }
    }
}

#Preview {
    UserPlustBtnView()
}
