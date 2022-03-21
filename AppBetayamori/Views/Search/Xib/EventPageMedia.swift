//
//  EventPageMedia.swift
//  AppBetayamori
//
//  Created by 高橋良汰 on 2022/03/08.
//

import SwiftUI

struct EventPageMedia: View {
    
    @Binding var contentHeight: CGFloat
    
    @EnvironmentObject var devisesize: DeviceSize
    
    
    var videoId = ["8ni4BabhtSg", "hIfiMvipqp8", "ur7mLYTIJ-o"]
    
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Movie")
                    .padding()
                NavigationLink(destination: VideoList()){
                    Spacer()
                    Image(systemName: "chevron.forward")
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            ForEach(0..<videoId.count) {row in
                VStack{
                    YTWrapper(videoID: videoId[row])
                }
                .frame(width: devisesize.width, height: devisesize.width * 0.75)
                .padding()
            }
            
        }
        .background(GeometryReader{
            geometry -> Text in
            contentHeight = geometry.size.height
            return Text("")
        })
    }
}

struct EventPageMedia_Previews: PreviewProvider {
    
    @State static var contentHeight: CGFloat = 500
    
    static var previews: some View {
        EventPageMedia(contentHeight: $contentHeight)
    }
}
