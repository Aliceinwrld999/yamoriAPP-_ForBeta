//
//  SearUserItem.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/27.
//

import SwiftUI

struct SearchUserItem: View {
    
    private var username = "ユーザーの名前"
    private var userId = "@123456"
    private var tagCount = 13
    private var commonFollow = "重田隆志asdfghjkl"
    private var commonFollowCount = 3
    @State private var followState: Bool = false
    
    var body: some View {
        HStack{
            NavigationLink(destination: OtherUserProfile()){
                UserCircleIcon()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading){
                    Text(username)
                        .font(.headline)
                    Text(userId)
                        .font(.subheadline)
                    Text("\(commonFollow)ほか\(commonFollowCount)人がフォロー中").lineLimit(1)
                        .font(.caption)
                        .foregroundColor(Color.gray)
//                    Text ("共通タグ \(tagCount)")
//                        .font(.subheadline)
                }.foregroundColor(Color.primary)
                .padding(EdgeInsets(
                    top: 0,
                    leading: 10,
                    bottom: 0
                    , trailing: 0
                ))
            }
            Spacer()
        }
        .frame(width: 300)
        .padding(
            EdgeInsets(
                top: 0,
                leading: 10,
                bottom: 0
                , trailing: 10
            ))
    }
}

struct SearchUserItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserItem()
    }
}
