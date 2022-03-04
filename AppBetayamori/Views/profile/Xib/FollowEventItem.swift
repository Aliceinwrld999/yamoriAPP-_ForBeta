////
////  FollowEventItem.swift
////  YamoriApp#1 211217
////
////  Created by 高橋良汰 on 2022/01/04.
////
//
//import SwiftUI
//
//struct FollowEventItem: View {
//    
//    private var eventImage:Image {
//        Image("Ariyoshi")
//    }
//    
//    private var eventName = "有吉弘行展"
//    
//    @State private var followState:Bool = false
//    
//    var body: some View {
//        HStack{
//            eventImage
//                .resizable()
//                .scaledToFill()
//                .frame(width: 70, height: 100)
//            VStack(alignment: .leading){
//                Text(eventName)
//                ScrollView(.horizontal){
//                    HStack{
//                        Tag(color: tagCategolyList["book"]!, text: "調整中", size: .title3)
//                        Tag(color: tagCategolyList["book"]!, text: "調整中", size: .title3)
//                        Tag(color: tagCategolyList["book"]!, text: "調整中", size: .title3)
//                        Tag(color: tagCategolyList["book"]!, text: "調整中", size: .title3)
//                        Tag(color: tagCategolyList["book"]!, text: "調整中", size: .title3)
//                    }
//                }
//            }
//            .frame(width: 200, height: 80)
//            Button(action:{self.followState.toggle()}){
//                Image(systemName: followState ?  "person.crop.circle.fill.badge.checkmark" : "person.crop.circle.badge.plus")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 30, height: 30)
//                    .foregroundColor(Color.black)
//                    .padding()
//            }
//        }
//    }
//}
//
//struct FollowEventItem_Previews: PreviewProvider {
//    static var previews: some View {
//        FollowEventItem()
//    }
//}
