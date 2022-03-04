//
//  LetsGoList.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/14.
//

import SwiftUI

struct LetsGoList: View {
    
    var commonTagCount = 23
    
    @State var userCount = 5
    
    var body: some View {
        VStack{
            HStack{
                Text("行きたい人リスト \(userCount)")
                    .font(.headline)
                Spacer()
                
            }
            .padding()
            ScrollView{
                ForEach(0..<20) {(row: Int) in
                    NavigationLink(destination: OtherUserProfile()){
                        HStack(alignment: .center){
                            UserCircleIcon()
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading){
                                Text("ユーザーの名前")
                                Text("共通タグ\(commonTagCount)")
                            }
                            .padding(.horizontal)
                            Spacer()
                        }
                        .padding()
                    }
                    .foregroundColor(Color.primary)
                    
                }
            }
        }
    }
}



struct LetsGoList_Previews: PreviewProvider {
    static var previews: some View {
        LetsGoList()
    }
}
