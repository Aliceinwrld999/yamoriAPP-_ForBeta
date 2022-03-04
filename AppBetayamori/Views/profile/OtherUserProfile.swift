//
//  OtherUserProfile.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct OtherUserProfile: View {
    
    private let username = "ユーザーの名前"
    private let userId = "@abcd12345"
    private let birthDayMonth = 11
    private let birthDayDay = 9
    private let profileDescription = "プロフィールの説明"
    private let profileLock: Bool = false
    private let tagNumber = OtherTagDataArray.count
    
    @StateObject var model = FlowLayoutModel()
    
    var rows: [GridItem] = Array(repeating: .init(.fixed(30)), count: 2)
    
    var body: some View {
        
        
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    UserCircleIcon()
                        .frame(width: 80, height: 80)
                    
                    VStack{
                        Text(username)
                        Text(userId)
                    }
                    Spacer()
                    NavigationLink(destination: FollowList()){
                        Image(systemName: profileLock ? "person.3.fill" : "person.3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 30)
                            .foregroundColor(Color.black)
                    }
                }
                
                .padding(EdgeInsets(
                    top: 0,
                    leading: 20,
                    bottom: 0,
                    trailing: 40
                ))
                
                
                Text("誕生日 \(birthDayMonth)月\(birthDayDay)日")
                    .padding(EdgeInsets(
                        top: 0,
                        leading: 20,
                        bottom: 0,
                        trailing: 0
                    ))
                
                
                Text(profileDescription)
                    .padding(EdgeInsets(
                        top: 10,
                        leading: 20,
                        bottom: 0,
                        trailing: 0
                    ))
                
                ScrollView(.horizontal, showsIndicators: false){
                    VStack(alignment: .leading){
                        HStack(spacing: 0){
                            ForEach(0..<divideInTwo(data: OtherTagDataArray).upper.count){num in
                                
                                Tag(tagState: false, tapState: false, color: tagCategoryList[divideInTwo(data: OtherTagDataArray).upper[num].parent] ?? .gray, text: divideInTwo(data: OtherTagDataArray).upper[num].name, size: .callout)
                            }
                            .padding(EdgeInsets(
                                top: 3, leading: 3, bottom: 3, trailing: 3))
                        }
                        HStack(spacing: 0){
                            ForEach(0..<divideInTwo(data: OtherTagDataArray).down.count){num in
                                
                                Tag(tagState: false, tapState: false, color: tagCategoryList[divideInTwo(data: OtherTagDataArray).down[num].parent] ?? .gray, text: divideInTwo(data: OtherTagDataArray).down[num].name, size: .callout)
                            }
                            .padding(EdgeInsets(
                                top: 3, leading: 3, bottom: 3, trailing: 3))
                        }
                    }
                    .padding(.leading, 5)
                }
                
                HStack{
                    Spacer()
                    Text("\(tagNumber)/50")
                    
                    NavigationLink(destination: EditMyTag(whosTagState: .others)){
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color.black)
                    }
                }
                .padding()
                
                
                ProfileContent(myProfileState: false)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        OtherUserprofileSetting()
                    }
                }
            }
        }
        
       
        
        
    }
    
    
}





struct OtherUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        OtherUserProfile()
            .previewDevice("iPhone 12 Pro")
    }
}
