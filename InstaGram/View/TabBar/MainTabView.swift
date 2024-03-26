//
//  TabBarView.swift
//  InstaGram
//
//  Created by 이상민 on 3/20/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("홈")
                .tabItem { Image(systemName: "house") }
            
            Text("검색")
                .tabItem { Image(systemName: "magnifyingglass") }
            
            Text("게시물")
                .tabItem { Image(systemName: "plus.app") }
            
            Text("릴스")
                .tabItem { Image(systemName: "video") }
            
            ProfileView()
                .tabItem { Image(systemName: "person.circle") }
        }//: TABVIEW
    }
}

#Preview {
    MainTabView()
}
