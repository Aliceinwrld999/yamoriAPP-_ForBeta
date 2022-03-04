//
//  ProfileContent.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/29.
//

import SwiftUI





struct ProfileContent: View {
    
    @State var contentHeightPost: CGFloat = 500
    @State var contentHeightWantToGo: CGFloat = 500
    @State var contentHeightSchedule: CGFloat = 500
    @State var contentHeight: CGFloat = 500
    
    //    private let ProfileContentViewaType = [
    //        (viewName: "post", viewClass: ProfileContentPost()),
    //        (viewName: "wantToGo", viewClass: ProfileContentWantToGo()),
    //        (viewName: "schedule", viewClass: ProfileContentSchedule(contentHeight: $contentHeight)
    //    ]
    
    @State var myProfileState: Bool
    
    @State private var selection = 1
    //    @State var
    
    
    var body: some View {
        
        
        VStack{
            
            HStack{
                //                Spacer()
                //                Button(action: {selection = 1}){
                //                    Image(systemName: "square")
                //                        .resizable()
                //                        .scaledToFill()
                //                        .frame(width: 30, height: 30)
                //                        .foregroundColor(Color.black)
                //                }
                
//                Spacer()
                Button(action: {selection = 2}){
                    HStack{
                    Image("WantToGoIcon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        Text("いきたいリスト")
                    }
                }
                
                Spacer()
//                if myProfileState {
//                    Button(action: {selection = 3}){
//                        Image(systemName: "calendar")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: 30, height: 30)
//                            .foregroundColor(Color.black)
//                    }
//
//                    Spacer()
//                }
                
            }
            
            .padding(.bottom, 20)
            
            
            TabView(selection: $selection) {
                //                ProfileContentPost(contentHeight: $contentHeightPost).tag(1)
                //                    .onPreferenceChange(ProfileContentHeightPreference.self) { value in
                //                        self.contentHeight = value
                //                    }
                
                ProfileContentWantToGo(contentHeight: $contentHeightWantToGo).tag(2)
                    .onPreferenceChange(ProfileContentHeightPreference.self) { value in
                        self.contentHeight = value
                    }
//                if myProfileState{
//                    ProfileContentSchedule(contentHeight: $contentHeightSchedule).tag(3)
//                        .onPreferenceChange(ProfileContentHeightPreference.self) { value in
//                            self.contentHeight = value
//                        }
//                }
            }
            
            .frame(height: ContentHeightFunc(selection: selection, post: contentHeightPost, Want: contentHeightWantToGo, schedule: contentHeightSchedule))
            .tabViewStyle(PageTabViewStyle())
            
            //            }
            
            
        }
    }
}

func ContentHeightFunc(selection: Int, post: CGFloat, Want: CGFloat, schedule: CGFloat) -> CGFloat{
    
    var contentHeight: CGFloat
    
    if selection == 1 {
        contentHeight = post
    } else if selection == 2 {
        contentHeight = Want
    } else {
        contentHeight = schedule
    }
    
    return contentHeight
    
}

struct ProfileContent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContent(myProfileState: true)
            .previewDevice("iPhone 12 Pro")
    }
}
