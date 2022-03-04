//
//  FollowList.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct UserFollowList: View {
    
    @State private var selection = 0
    
    var body: some View {
        
        VStack{
            HStack{
                Spacer()
                Text("表示順")
               
                
                Picker(selection: $selection, label: Text("共通タグ")) {
                    Text("新しい順").tag(0)
                    Text("古い順").tag(1)
                    Text("共通タグが多い順").tag(2)
                }
                .labelsHidden()
                .pickerStyle(MenuPickerStyle())
                
                if selection == 0 {
                    Text("新しい順")
                } else if selection == 1{
                    Text("古い順")
                } else if selection == 2{
                    Text("共通タグが多い順")
                }
                
                
            }.padding(.horizontal)
            
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(0..<30) {(row: Int) in
                        
                        FollowUserItem()
                    }
                    
                }
            }
        }
    }
}

struct UserFollowList_Previews: PreviewProvider {
    static var previews: some View {
        UserFollowList()
    }
}
