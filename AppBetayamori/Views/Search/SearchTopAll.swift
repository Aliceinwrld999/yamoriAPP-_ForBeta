//
//  SearchTopAll.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/19.
//

import SwiftUI

struct SearchTopAll: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 30) {
//                articleItem()
//                NavigationLink(destination: ArticleListTop()){
//                    Text("もっとみる")
//                        .font(.subheadline)
//                        .fontWeight(.regular)
//                        .foregroundColor(Color.black)
//                        .padding(EdgeInsets(
//                            top: 7,
//                            leading: 20,
//                            bottom:7,
//                            trailing: 20
//                        ))
//                        .cornerRadius(30)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 30)
//                                .stroke(Color.black, lineWidth: 1)
//                        )
//
//                }.padding(EdgeInsets(
//                    top: 10,
//                    leading: 0,
//                    bottom: 0,
//                    trailing: 0))
                
                
                ForEach(0..<3) {(row: Int) in
                    
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("おすすめのイベント")
                            
                            NavigationLink(destination: SearchResultTop()){
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .padding()
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                
                                ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                                    SearchEventItem(eventData: eventDemoDataArray[row])
                                        .foregroundColor(Color.black)
                                        .padding(.leading, 10)
                                }
                                
                            }
                        }
                    }
                }
                VStack{
                    HStack{
                        Text("マイタグPick🐈")
                            .padding(.horizontal)
                        Spacer()
                    }
                    TagBar()
                }
            }
            
        }
    }
}

struct SearchTopAll_Previews: PreviewProvider {
    static var previews: some View {
        SearchTopAll()
    }
}
