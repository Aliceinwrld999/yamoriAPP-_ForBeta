//
//  SearchingResult.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/11.
//

import SwiftUI

struct SearchingResult: View {
    
    @State private var selection = 0
    
    private let postSearchType = ["遊び", "フード","記事"]
    
    
    var body: some View {
        VStack{
            ScrollViewReader { proxy in
                HStack{
                    Spacer()
                    ForEach(0..<self.postSearchType.count) { num in
                        Button(action: {
                            withAnimation {
                                selection = num
                            }}){
                                
                                if selection == num {
                                    Text(postSearchType[num])
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.primary)
                                } else {
                                    Text(postSearchType[num])
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.gray)
                                }
                                
                                
                            }
                        Spacer()
                    }
                }.onChange(of: selection, perform: { index in
                    withAnimation {
                        proxy.scrollTo(index, anchor: .center)
                    }
                })
            }
            
            TabView(selection: $selection) {
                
                SearchResultTop()
                .tag(0)
                
                
                SearchResultTop(searchViewChangeState: .list)
                .tag(1)
                
                
//                ArticleListTop()
//                .tag(2)
                
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct SearchingResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchingResult()
    }
}
