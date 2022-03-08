//
//  StorePage.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI
import PartialSheet

struct EventPage: View {
    
    
    var eventData: SampleDataModel
    
    var followerNum = 123
    @State private var fullscreenImageModalIsShow = false
    @State private var ScheduleModalIsShow:Bool = false
    @State private var favorite: Bool = false
    @State var eventImage = "NogizakaFourSeasons"
    
    
    
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    @EnvironmentObject var searchType: SearchViewType
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Button(action: {self.fullscreenImageModalIsShow.toggle()}){
                        Image(eventData.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 153)
                            .clipped()
                        
                    }.fullScreenCover(isPresented: $fullscreenImageModalIsShow) {
                        FullScreenImageModal(fullScreenImageUrl: eventImage, fullscreenImageModalIsShow: $fullscreenImageModalIsShow)
                    }
                    Spacer()
                    
                    VStack{
                        
                        Text(eventData.title)
                            .lineLimit(2)
                        
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
                                        self.partialSheetManager.showPartialSheet(content: {
                                            
                                            CommentHalfModal()
                                        })
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
                                VStack{
                                activityButton()
                                    Text("")
                                }
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
                
                Button(action: {
                    self.partialSheetManager.showPartialSheet(content: {
                        LetsGoList()
                            .frame(height: 300)
                    })
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
                
            }
            .padding(EdgeInsets(
                top: 0,
                leading: 30,
                bottom: 0,
                trailing: 30))
            
//            Divider()
            
            
            
            EventPageContent()
                .onTapGesture(count: 2){
                    favorite = true
                }
//            HStack{
//                Spacer()
//                Text("表示方法")
//                Button(action: {withAnimation(.linear(duration: 0.1)) {searchType.viewType = .gyarally}}){
//                    if searchType.viewType == .gyarally {
//                        Text("ギャラリー")
//                            .foregroundColor(Color.white)
//                            .padding(.horizontal, 5)
//                            .background(Color.black)
//                            .cornerRadius(30)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 30)
//                                    .stroke(Color.black, lineWidth: 2)
//                            )
//                    } else {
//                        Text("ギャラリー")
//                            .foregroundColor(Color.black)
//                            .padding(.horizontal, 5)
//                    }
//                }
//
//                Button(action: {withAnimation(.linear(duration: 0.1)) {searchType.viewType = .list}}){
//                    if searchType.viewType == .list {
//                        Text("リスト")
//                            .foregroundColor(Color.white)
//                            .padding(.horizontal, 5)
//                            .background(Color.black)
//                            .cornerRadius(30)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 30)
//                                    .stroke(Color.black, lineWidth: 2)
//                            )
//                    } else {
//                        Text("リスト")
//                            .foregroundColor(Color.black)
//                            .padding(.horizontal, 5)
//                    }
//                }
//            }
//            .font(.footnote)
//            .padding()
            switch searchType.viewType {
                    case .gyarally:
                        SearchBeforeTopGyarally()
                    case .list:
                        SearchBeforeTopList()
                    }
            
            
            
        
        
        }
        
        
        .navigationTitle("")
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
        EventPage(eventData: eventDemoDataArray[0])
            .previewDevice("iPhone 12 Pro")
    }
}




