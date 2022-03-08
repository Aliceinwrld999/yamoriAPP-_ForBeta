//
//  EventPageContent.swift
//  AppBetayamori
//
//  Created by 高橋良汰 on 2022/03/08.
//

import SwiftUI

struct EventPageContent: View {
    
    @State var selection = 1
    
    @State var contentHeight: CGFloat = 500
    @State var contentHeightDescription: CGFloat = 500
    @State var contentHeightMedia: CGFloat = 500
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {selection = 1}){
                    Image(systemName: "square")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.black)
                }
                
                Spacer()
                Button(action: {selection = 2}){
                    Image("WantToGoIcon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
            }
            
            TabView(selection: $selection) {
                EventPageDescription(contentHeight: $contentHeightDescription).tag(1)
                    .onPreferenceChange(ProfileContentHeightPreference.self) { value in
                        self.contentHeight = value
                    }
                EventPageMedia(contentHeight: $contentHeightMedia).tag(2)
                    .onPreferenceChange(ProfileContentHeightPreference.self) { value in
                        self.contentHeight = value
                    }
                
            }
            .frame(height: EventPageContentHeightFunc(selection: selection, description: contentHeightDescription, media: contentHeightMedia))
            .tabViewStyle(PageTabViewStyle())
            
            
        }
    }
    private func EventPageContentHeightFunc(selection: Int, description: CGFloat, media: CGFloat) -> CGFloat{
        
        var contentHeight: CGFloat
        
        if selection == 1 {
            contentHeight = description
        } else {
            contentHeight = media
        }
        
        return contentHeight
        
    }

}



struct EventPageContent_Previews: PreviewProvider {
    static var previews: some View {
        EventPageContent()
    }
}
