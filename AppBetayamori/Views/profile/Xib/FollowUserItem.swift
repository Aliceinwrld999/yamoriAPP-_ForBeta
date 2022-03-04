//
//  FollowsUserItem.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct FollowUserItem: View {
    
    private var username = "ユーザーの名前"
    private var tagCount = 3
    
    
    var body: some View {
        
        
        HStack{
            NavigationLink(destination: OtherUserProfile()){
                UserCircleIcon()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    Text(username)
                        .font(.headline)
                    
                    Text ("共通タグ \(tagCount)")
                        .font(.subheadline)
                }.foregroundColor(Color.primary)
                .padding(EdgeInsets(
                    top: 0,
                    leading: 10,
                    bottom: 0
                    , trailing: 0
                ))
            }
            Spacer()
            UserFollowButton()
            
            
        }
        .padding(
            EdgeInsets(
                top: 0,
                leading: 10,
                bottom: 0
                , trailing: 10
            ))
    }
}

struct FollowUserItem_Previews: PreviewProvider {
    static var previews: some View {
        FollowUserItem()
    }
}
