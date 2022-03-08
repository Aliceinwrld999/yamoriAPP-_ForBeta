//
//  EcentPageDescription.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/22.
//

import SwiftUI

struct EventPageDescription: View {
    
    var geocode = GeocodeMap()
    
    @Binding var contentHeight: CGFloat
    
    let eventDescription = "イベントの説明。この場所にイベントの詳細な説明テキストが入ります。"
    let eventUrl = "https://www.yamorifilm.com"
    let eventLocation = "東京都渋谷区渋谷2-21-1"
    let eventPlace = "渋谷ヒカリエ"
    let eventPhoneNumber = "03-1234-5678"
    let eventDay = "2021年12月1日 ~ 2022年1月30日"
    
    var body: some View {
        
        VStack{
            Text(eventDescription)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 15){
                HStack{
                    Image(systemName: "link")
                    
                    Button(action: {
                        if let url = URL(string: eventUrl) {
                            UIApplication.shared.open(url, options: [.universalLinksOnly: false], completionHandler: {completed in
                                print(completed)
                            })
                        }
                    }){
                        Text(eventUrl)
                    }.foregroundColor(Color.gray)
                    
                
                
                
            }
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(eventLocation)
                
                Button {
                    geocode.Geocode(address: eventLocation)
            
                } label: {
                    Text("[MAP]")
                        .foregroundColor(.gray)
                }
            }
            
            HStack{
                Image(systemName: "cube")
                Text(eventPlace)
            }
            
            HStack(alignment: .top){
                Image(systemName: "clock")
                VStack{
                    HStack{
                        Text("平日")
                        Text("10:00 ~ 20:00")
                    }
                    HStack{
                        Text("平日")
                        Text("10:00 ~ 20:00")
                    }
                }
            }
            
            HStack{
                Image(systemName: "phone")
                Text(eventPhoneNumber)
            }
            
            HStack{
                Text("日程")
                Text(eventDay)
            }
            
            HStack(alignment: .top){
                Text("料金")
                VStack(alignment: .leading){
                    HStack{
                        Text("一般")
                        
                    }
                    HStack{
                        Text("学生")
                        
                    }
                    HStack{
                        Text("小学生以下")
                        
                    }
                }
                VStack{
                    Text("¥4,000")
                    Text("¥2,000")
                    Text("¥1,000")
                }
                
            }
        }
        .padding()
        Divider()
    }
        .padding()
        .background(GeometryReader{
            geometry -> Text in
            contentHeight = geometry.size.height
            return Text("")
        })
    
}
}

struct EventPageDescription_Previews: PreviewProvider {
    
    @State static var contentHeight: CGFloat = 500
    
    static var previews: some View {
        EventPageDescription(contentHeight: $contentHeight)
    }
}
