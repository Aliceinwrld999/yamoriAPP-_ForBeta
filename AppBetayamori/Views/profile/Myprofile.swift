//
//  Myprofile.swift
//  YamoriApp#1 211217
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct Myprofile: View {
    
    var myUserDate: UserDataModel
    private let userId = "@abcd12345"
    private let birthDayMonth = 11
    private let birthDayDay = 9
    private let profileDescription = "プロフィールの説明"
    private let profileLock: Bool = false
    private let tagNumber = MyTagDataArray.count
    
    
    var body: some View {
        
        
        NavigationView{
            ScrollView{
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            
                            if let iconImage:String = myUserDate.iconImage {
                                UserCircleIcon(imageUrl: iconImage)
                                    .frame(width: 80, height: 80)
                            } else {
                                UserCircleIcon(imageUrl: "nothingIconImage")
                                    .frame(width: 80, height: 80)
                            }
                            
                            
                            VStack(alignment: .leading){
                                Text(myUserDate.userName)
                                Text("@\(myUserDate.id)")
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
                        
                        //
                        if let birthday:String = myUserDate.birthDay {
                            Text("\(birthday)")
                                .padding(EdgeInsets(
                                    top: 0,
                                    leading: 20,
                                    bottom: 0,
                                    trailing: 0
                                ))
                        }
                        
                        if let description:String = myUserDate.profileDescription {
                            Text(description)
                                .padding(EdgeInsets(
                                    top: 10,
                                    leading: 20,
                                    bottom: 0,
                                    trailing: 0
                                ))
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            VStack(alignment: .leading){
                                HStack(spacing: 0){
                                    ForEach(0..<divideInTwo(data: MyTagDataArray).upper.count){num in
                                        
                                        Tag(tagState: true, tapState: false, color: tagCategoryList[divideInTwo(data: MyTagDataArray).upper[num].parent] ?? .gray, text: divideInTwo(data: MyTagDataArray).upper[num].name, size: .callout)
                                    }
                                    .padding(EdgeInsets(
                                        top: 3, leading: 3, bottom: 3, trailing: 3))
                                }
                                HStack(spacing: 0){
                                    ForEach(0..<divideInTwo(data: MyTagDataArray).down.count){num in
                                        
                                        Tag(tagState: true, tapState: false, color: tagCategoryList[divideInTwo(data: MyTagDataArray).down[num].parent] ?? .gray, text: divideInTwo(data: MyTagDataArray).down[num].name, size: .callout)
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
                            
                            NavigationLink(destination: EditMyTag()){
                                Image(systemName: "square.and.pencil")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding()
                        
                    }
                    ProfileContent(myProfileState: true)
                    
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        MyprofileSetting()
                    }
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Myprofile_Previews: PreviewProvider {
    static var previews: some View {
        Myprofile(myUserDate: UserDataArray[2])
            .previewDevice("iPhone 12 Pro")
    }
}
