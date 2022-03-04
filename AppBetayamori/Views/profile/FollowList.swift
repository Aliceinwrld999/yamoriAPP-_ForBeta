//
//  MyFollowList.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/01.
//

import SwiftUI

enum FollowViewState {
    case UserFollow, UserFollower, EventFollow
}

enum UserState {
    case myProfile, otherProfile
}

struct FollowList: View {

    
    @State private var selection = 0
    
    var body: some View {
        ScrollView{
            
            
            HStack{
                Spacer()
                Button(action: {selection = 0}){
                    if selection == 0 {
                        Text("フォロー")
                            .font(.body)
                            .fontWeight(.bold)
                        
                    } else {
                        Text("フォロー")
                            .font(.body)
                        
                    }
                }
                Spacer()
                Button(action: {selection = 1}){
                    if selection == 1 {
                    Text("フォロワー")
                        .font(.body)
                        .fontWeight(.bold)
                    
                } else {
                    Text("フォロワー")
                        .font(.body)
                    
                }
                }
                Spacer()
                
            }
            .foregroundColor(.black)
            .padding(.top, 20)
            
            
            TabView(selection: $selection) {
                UserFollowList().tag(0)
                UserFollowList().tag(1)
//
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: 700)
            
            
        }
        
        .navigationTitle("ユーザーの名前")
        .navigationBarTitleDisplayMode(.inline)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {}) {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(Color.black)
                }
            }
        }
        
        
    }
    
    
}

struct FollowList_Previews: PreviewProvider {
    static var previews: some View {
        FollowList()
            .previewDevice("iPhone 12 Pro")
    }
}
