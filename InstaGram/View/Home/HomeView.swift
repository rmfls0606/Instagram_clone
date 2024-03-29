//
//  HomeView.swift
//  InstaGram
//
//  Created by 이상민 on 3/26/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 8){
                //MARK: - Header
                //logo
                HStack{
                    Image("Instagram")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130)
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .padding(.horizontal, 8)
                    Image(systemName: "paperplane")
                }//: HSTACK
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color("modeColorBlackWhite"))
                .padding(.horizontal)
                
                //story
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 20){
                        VStack{
                            CircleUserImageview(userImageName: "cat0", size: .big)
                                .overlay{
                                    PlusBtnIconView()
                                        .vBottom()
                                        .hTrailing()
                                }
                            Text("내 스토리")
                                .font(.footnote)
                        }
                        ForEach(0..<9){idx in
                            VStack{
                                StoryView(text: "이름 \(idx)")
                            }//: VSTACK
                        }
                    }//: LazyHStack
                }//: SCROLLVIEW
                .padding(.horizontal, 8)
                
                Divider()
                
                //MARK: - Content
                LazyVStack(spacing: 30){
                    ForEach(0..<4){index in
                        VStack{
                            //logo
                            HStack{
                                CircleUserImageview(userImageName: "cat0", size: .small)
                                
                                Text("person")
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Image(systemName: "ellipsis")
                            }//: HSTACK
                            .padding(.horizontal, 8)
                            .font(.callout)
                            
                            //image
                            Image("cat1")
                                .resizable()
                                .scaledToFit()
                            
                            //icon
                            VStack(alignment: .leading, spacing: 4){
                                HStack(spacing: 14){
                                    Image(systemName: "heart")
                                    Image(systemName: "message")
                                    Image(systemName: "paperplane")
                                }//: HSTACK
                                .padding(.vertical, 4)
                                .font(.title2)
                                .fontWeight(.semibold)
                                
                                //like
                                Text("종아요 22개")
                                    .font(.callout)
                                
                                //username + writing
                                Text("person ")
                                    .font(.callout)
                                    .fontWeight(.bold) +
                                Text("오늘도 운동 끝! 기분 좋은 하루 시작!")
                                    .font(.callout)
                            }//: VSTACK
                            .hLeading()
                            .padding(.horizontal, 8)
                        }//: VSTACK
                    }//: LOOP
                }//: LAZYVSTACK
            }//: VSTACK
        }
    }
}

#Preview {
    HomeView()
}
