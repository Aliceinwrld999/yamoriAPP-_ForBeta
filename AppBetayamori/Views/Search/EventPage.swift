//
//  StorePage.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI
import PartialSheet

struct EventPage: View {
    
    
    enum searchViewChange {
        case gyarally, list
    }
    
    @State var searchViewChangeState: searchViewChange = .gyarally
    
    
    var followerNum = 123
    @State private var fullscreenImageModalIsShow = false
    @State private var ScheduleModalIsShow:Bool = false
    @State private var favorite: Bool = false
    @State var eventImage = "NogizakaFourSeasons"
    
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Button(action: {self.fullscreenImageModalIsShow.toggle()}){
                        Image(eventImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 153)
                            .clipped()
                        
                    }.fullScreenCover(isPresented: $fullscreenImageModalIsShow) {
                        FullScreenImageModal(fullScreenImageUrl: eventImage, fullscreenImageModalIsShow: $fullscreenImageModalIsShow)
                    }
                    Spacer()
                    
                    VStack{
                        Button(action: {
//                            self.partialSheetManager.showPartialSheet(content: {
//                                LetsGoList()
//                                    .frame(height: 300)
//                            })
                        }){
                            HStack(alignment: .center){
                                VStack{
                                    Image("WantToGoIcon")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 25, height: 25)
                                    
                                    Text("行きたい")
                                        .font(.caption2)
                                        .padding(.trailing, 20)
                                        .foregroundColor(Color.black)
                                }
                                ForEach(0..<3) {(row: Int) in
                                    UserCircleIcon()
                                        .frame(width: 45, height: 45)
                                        .padding(.leading, -13)
                                }
                                Spacer()
                            }
                        }
                        //                        HStack{
                        //                            VStack{
                        //                                Text("123")
                        //                                    .font(.title)
                        //                                Text("フォロワー")
                        //                                    .font(.caption)
                        //                            }
                        //                            VStack{
                        //                                Text("15 K")
                        //                                    .font(.title)
                        //                                Text("views")
                        //                                    .font(.caption)
                        //                            }
                        //                        }
                        HStack{
                            HStack(spacing: 20){
                                VStack{
                                    Button(action: {
                                        self.favorite.toggle()
                                    }){
                                        Image(systemName: favorite ? "suit.heart.fill" : "suit.heart")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(favorite ? .red : .black)
                                    }
                                    Text("25K")
                                        .font(.caption)
                                }
                                VStack{
                                    Button(action: {
//                                        self.partialSheetManager.showPartialSheet(content: {
//                                            
//                                            CommentHalfModal()
//                                        })
                                    }){
                                        Image(systemName: "text.bubble")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.black)
                                        
                                    }
                                    Text("25K")
                                        .font(.caption)
                                }
//                               
                                VStack{
                                    Button(action: { }){
                                        Image("WantToGoIcon")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 25, height: 25)
                                        
                                    }
                                    Text("25K")
                                        .font(.caption)
                                }
                                activityButton()
                            }
//                            EventFollowButton()
                            
                            //
                        }
                        //                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    Spacer()
                }
                HStack{
                    NavigationLink(destination: SearchResultTop(searchWord: "乃木坂46")){
                        TagMedium(color: tagCategolyList["music"]!)
                    }
                    Spacer()
                }
                .padding()
                
                
                
                //                HStack{
                //                    Button(action: {self.ScheduleModalIsShow.toggle()}){
                //                        Text("予定に追加")
                //                            .font(.footnote)
                //                            .fontWeight(.semibold)
                //                            .foregroundColor(Color.black)
                //                            .padding(EdgeInsets(
                //                                top: 5,
                //                                leading: 30,
                //                                bottom:5,
                //                                trailing: 30
                //                            ))
                //                            .overlay(
                //                                RoundedRectangle(cornerRadius: 3)
                //                                    .stroke(Color.black, lineWidth: 1)
                //                            )
                //
                //                    }.sheet(isPresented: $ScheduleModalIsShow) {
                //                        CreateSchedule()
                //                    }
                //
                //                    Spacer()
                //
                //
                //                }
            }
            .padding(EdgeInsets(
                top: 0,
                leading: 30,
                bottom: 0,
                trailing: 30))
            
            Divider()
            EventPageDescription()
                .onTapGesture(count: 2){
                    favorite = true
                }
            
                    switch searchViewChangeState {
                    case .gyarally:
                        SearchBeforeTopGyarally()
                    case .list:
                        SearchBeforeTopList()
                    }
            
            
            
        
        
        }
        
        
        .navigationTitle("イベントタイトルイベントタイトルイベントタイトル")
        .navigationBarTitleDisplayMode(.inline)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                
                ShowingEventPageReportModal()
                
                //                Button(action: {}){
                //                    Image(systemName: "line.3.horizontal")
                //                        .resizable()
                //                        .scaledToFill()
                //                        .frame(width: 15, height: 15)
                //                        .foregroundColor(Color.black)
                //                        .font(.system(size: 18, weight: .bold, design: .serif))
                //                }
            }
            
        }
        
        
    }
    
}

struct EventPage_Previews: PreviewProvider {
    static var previews: some View {
        EventPage()
            .previewDevice("iPhone 12 Pro")
    }
}




