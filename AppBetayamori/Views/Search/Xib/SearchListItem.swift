//
//  SearchListItem.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI

struct SearchListItem: View {
    var eventData: SampleDataModel
    
    var body: some View {
        
        
        
        
        VStack{
            NavigationLink(destination: EventPage(eventData: eventDemoDataArray[0])){
                HStack{
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 54, height: 54)
                        .clipped()
                        .cornerRadius(5)
                    VStack(alignment: .leading){
                        HStack{
                            Text(eventData.title)
                                .font(.subheadline)
                            Spacer()
                            
                            
                            
                            Image(systemName: "chevron.forward")
                            
                            
                        }
                        
                        HStack{
                            Text("¥\(eventData.price)")
                                .foregroundColor(Color.gray)
                            Tag(tapState: false, color: .blue, text: "調整中", size: .caption)
                            Spacer()
                        }
                    }
                }
            }
            .foregroundColor(Color.black)
            .padding()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 115, height: 115)
                        .clipped()
                        .cornerRadius(5)
                    
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 115, height: 115)
                        .clipped()
                        .cornerRadius(5)
                    
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 115, height: 115)
                        .clipped()
                        .cornerRadius(5)
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 115, height: 115)
                        .clipped()
                        .cornerRadius(5)
                    Image(eventData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 115, height: 115)
                        .clipped()
                        .cornerRadius(5)
                }
            }
        }
    }
}

struct SearchListItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchListItem(eventData: eventDemoDataArray[0])
    }
}
