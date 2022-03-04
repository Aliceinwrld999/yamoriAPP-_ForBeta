//
//  PostContentWantToGo.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/29.
//

import SwiftUI

struct ProfileContentWantToGo: View {
    
    @Binding var contentHeight: CGFloat
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack{
                
                LazyVGrid(columns: Array(repeating: GridItem(), count: 3)) {
                    ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                        NavigationLink(destination: EventPage()){
                            SearchEventItem(eventData: eventDemoDataArray[row])
                        }
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(
                            top: 0, leading: 5, bottom: 30, trailing: 5))
                    }
                    
                    ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                        NavigationLink(destination: EventPage()){
                            SearchEventItem(eventData: eventDemoDataArray[row])
                        }
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(
                            top: 0, leading: 5, bottom: 30, trailing: 5))
                    }
                    
                    ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                        NavigationLink(destination: EventPage()){
                            SearchEventItem(eventData: eventDemoDataArray[row])
                        }
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(
                            top: 0, leading: 5, bottom: 30, trailing: 5))
                    }
                    
                    ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                        NavigationLink(destination: EventPage()){
                            SearchEventItem(eventData: eventDemoDataArray[row])
                        }
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(
                            top: 0, leading: 5, bottom: 30, trailing: 5))
                    }
                }
//                .padding(.top, 150)
                
            }
            .background(GeometryReader{
                geometry -> Text in
                contentHeight = geometry.size.height
                return Text("")
            })
            
        }
        
    }
}

struct ProfileContentWantToGo_Previews: PreviewProvider {
    
    @State static var contentHeight: CGFloat = 300
    
    static var previews: some View {
        ProfileContentWantToGo(contentHeight: $contentHeight)
    }
}
