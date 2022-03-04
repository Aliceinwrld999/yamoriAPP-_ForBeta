//
//  SearchResultView.swift
//  Search
//
//  Created by 高橋良汰 on 2022/02/01.
//

import SwiftUI

struct SearchResultView: View {
    
    
    @State private var selection = 0
    
    
    @State var searchConditions = [(image: "", text: "")]
    
    private let postSearchType = ["すべて", "テキスト", "写真", "動画"]
    
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
                
                ScrollView{
                    ForEach(0..<30) { itemcount in
                        
//                        PostItem(postType: .onlyText)
//                        PostItem(postType: .image)
//                        PostItem(postType: .movie)
                        
                        
                    }
                }
                .tag(0)
                
                
                ScrollView{
//                    ForEach(0..<30) { itemcount in
//
//                        PostItem(postType: .onlyText)
//                    }
                }
                
                .tag(1)
                
                
                ScrollView{
//                    ForEach(0..<30) { itemcount in
//
//                        PostItem(postType: .image)
//                    }
                }
                
                .tag(2)
                
                
                ScrollView{
//                    ForEach(0..<30) { itemcount in
//                        
//                        PostItem(postType: .movie)
//                    }
                }
                
                .tag(3)
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
