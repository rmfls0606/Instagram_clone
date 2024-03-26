//
//  ProfileView.swift
//  InstaGram
//
//  Created by 이상민 on 3/20/24.
//

import SwiftUI

struct ProfileView: View {
    //MARK: - 프로퍼티
    @State private var profileContentChange = true
    
    var body: some View {
        ScrollView{
            //MARK: - Header
            VStack(alignment: .leading){
                HStack{
                    //User_Account
                    HStack(spacing: 5){
                        Image(systemName: "lock")
                            .font(.callout)
                        
                        Text("__Instagram_Clone__")
                            .fontWeight(.bold)
                    }//: HSTACK
                    
                    Spacer()
                    
                    //menu
                    HStack{
                        Image(systemName: "plus.app")
                            .padding(.horizontal, 8)
                        
                        Image(systemName: "line.3.horizontal")
                    }//: HSTACK
                }//: HSTACK
                .font(.title2)
                .fontWeight(.semibold)
                
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height:  80)
                        .background(.gray)
                        .clipShape(Circle())
                        .overlay {
                            PlusBtnIconView()
                                .vBottom()
                                .hTrailing()
                        }
                    
                    Spacer()
                    
                    //write
                    ProfileInfoView(count: 1, text: "게시물")
                    
                    //follower
                    ProfileInfoView(count: 65, text: "팔로워")
                    
                    //following
                    ProfileInfoView(count: 49, text: "팔로잉")
                }//: HSTACK
                
                //User_Introduce
                VStack(alignment: .leading){
                    Text("이름이름")
                        .font(.callout)
                    Text("안녕하세요 인스타그램 클론코딩 진행중인 고궁마 입니다. 여기는 ProfileView입니다.")
                }
                
                HStack{
                    ProfileBtnView(text: "프로필 편집")
                    
                    ProfileBtnView(text: "프로필 공유")
                }//: HSTACK
            }//: VSTACK
            .padding(.horizontal)
            
            
            //MARK: - Content
            //버튼
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Button(action: {
                        withAnimation(.spring()) {
                            profileContentChange = true
                        }
                    }, label: {
                        Image(systemName: "square.grid.3x3")
                            .resizable()
                            .scaledToFit()
                            .modifier(ProfileContentBtnModifier())
                            .foregroundColor(profileContentChange ? Color("modeColorBlackWhite") : .gray)
                            .overlay(alignment: .bottom) {
                                if profileContentChange{
                                    Rectangle()
                                        .frame(height: 2)
                                        .foregroundColor(Color("modeColorBlackWhite"))
                                        .transition(.move(edge: .trailing))
                                }
                            }
                    })
                    
                    Button(action: {
                        withAnimation(.spring()) {
                            profileContentChange = false
                        }
                    }, label: {
                        Image(systemName: "person.crop.square")
                            .resizable()
                            .scaledToFit()
                            .modifier(ProfileContentBtnModifier())
                            .foregroundColor(!profileContentChange ? Color("modeColorBlackWhite") : .gray)
                            .overlay(alignment: .bottom) {
                                if !profileContentChange{
                                    Rectangle()
                                        .frame(height: 2)
                                        .foregroundColor(Color("modeColorBlackWhite"))
                                        .transition(.move(edge: .leading))
                                }
                            }
                    })
                }//: HSTACK
                
                //Content View
                if profileContentChange{
                    ProfileContentGridView()
                        .transition(.move(edge: .leading))
                    
                }else{
                    ProfileContentGridView()
                        .transition(.move(edge: .trailing))
                }
            }
        }//: SCROLLVIEW
    }
}

#Preview {
    ProfileView()
}
struct FirstView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 200, height: 200)
            .foregroundColor(.blue)
    }
}

struct SecondView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 200, height: 200)
            .foregroundColor(.green)
    }
}
