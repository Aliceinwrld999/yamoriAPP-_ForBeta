//
//  SearchEventProfile.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/17.
//

import SwiftUI
import PartialSheet

struct SearchEventItem: View {
    
    
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    @State var wantToGoState = true
    
    @State var wantToGoUserList = ["shigetaImage", "takahashiImage", "yoshidaImage"]
    
    var eventData: SampleDataModel
    
    
    var body: some View {
        VStack {
            NavigationLink(destination: EventPage(eventData: eventDemoDataArray[1])){
                VStack{
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 105, height: 147)
                        .clipped()
                    VStack{
                        HStack(alignment: .center, spacing: 5){
                            Image(systemName: wantToGoState ? "bookmark.fill" : "bookmark")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 10, height: 10)
                                .foregroundColor(wantToGoState ? Color.red: Color.primary)
                            
                            Text(eventData.title)
                                .font(.caption)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(width: 95.0, height: 31)
                            
                            
                        }.frame(width: 115.0)
                        
                        Text("¥\(eventData.price)")
                            .font(.caption2)
                            .foregroundColor(Color.gray)
                    }
                    .frame(height: 45)
                }
            }
            .foregroundColor(Color.black)
            NavigationLink(destination: SearchResultTop(searchWord: "乃木坂46")){
                Tag(tapState: false, color: .red, text: "調整中", size: .caption)
                    .padding(EdgeInsets(
                        top: 3,
                        leading: 7,
                        bottom: 3,
                        trailing: 7
                    ))
            }
            

            if self.wantToGoUserList.count == 0 {

            }
            else if self.wantToGoUserList.count <= 3 {
                Button(action: {
                    self.partialSheetManager.showPartialSheet(content: {
                        LetsGoList()
                            .frame(height: 300)
                    })
                }){
                    HStack {

                        Image("WantToGoIcon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30.0, height: 30.0)
                        ForEach(0..<self.wantToGoUserList.count) { num in
                            UserCircleIcon(imageUrl: wantToGoUserList[num])
                                .frame(width: 30, height: 30)
                                .padding(.trailing, -15)
                        }

                        Spacer()
                    }
                }

            }
            else if self.wantToGoUserList.count > 3 {
                Button(action: {
                    self.partialSheetManager.showPartialSheet(content: {
                        LetsGoList()
                            .frame(height: 300)
                    })
                }){
                    HStack {

                        Image("WantToGoIcon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30.0, height: 30.0)
                        ForEach(0..<3) { num in
                            UserCircleIcon(imageUrl: wantToGoUserList[num])
                                .frame(width: 30, height: 30)
                        }

                        Spacer()
                    }
                }
            }
        }
        .frame(width: 105)
    }
}

struct SearchEventProfile_Previews: PreviewProvider {
    static var previews: some View {
        SearchEventItem(eventData: eventDemoDataArray[0])
            .environmentObject(PartialSheetManager())
            .previewDevice("iPhone 12 Pro")
    }
}
