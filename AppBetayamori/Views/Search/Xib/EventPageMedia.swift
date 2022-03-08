//
//  EventPageMedia.swift
//  AppBetayamori
//
//  Created by 高橋良汰 on 2022/03/08.
//

import SwiftUI

struct EventPageMedia: View {
    
    @Binding var contentHeight: CGFloat
    
    var body: some View {
        VStack{
            
                Image("mappa")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 390, height: 218)
                    .clipped()
                    .padding(.vertical)
            
            
                Image("Mythos")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 390, height: 218)
                    .clipped()
                    .padding(.vertical)
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
