//
//  UserFollowButton.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct UserFollowButton: View {
    @State var userFollow:Bool = false
    
    var body: some View {
        Button(action: {self.userFollow.toggle() }){
            if userFollow == false {
            Text("フォローする")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding(EdgeInsets(
                    top: 5,
                    leading: 20,
                    bottom:5,
                    trailing: 20
                ))
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.black, lineWidth: 1)
                )
            } else {
                Text("フォロー解除")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(
                        top: 5,
                        leading: 20,
                        bottom:5,
                        trailing: 20
                    ))
                    .background(Color.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.black, lineWidth: 1)
                        )
            }
            
            
        }
    }
}

struct UserFollowButton_Previews: PreviewProvider {
    static var previews: some View {
        UserFollowButton()
    }
}
