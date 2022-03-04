//
//  SearchEditingView.swift
//  Search
//
//  Created by 高橋良汰 on 2022/02/01.
//

import SwiftUI

struct SearchEditingView: View {
    
    private let postSearchConditionsType = ["すべて","趣味タグ", "ハッシュタグ", "場所", "ユーザー"]

    
    @State private var selection = 0
    
    @Binding var searchConditions: [(image: String, text: String)]
    
    var body: some View {
        VStack{
            ScrollViewReader { proxy in
                HStack{
                    Spacer()
                    ForEach(0..<self.postSearchConditionsType.count) { num in
                        Button(action: {
                            withAnimation {
                                selection = num
                            }}){
                                
                                if selection == num {
                                    Text(postSearchConditionsType[num])
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.primary)
                                } else {
                                    Text(postSearchConditionsType[num])
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
                
                //                すべて
                ScrollView{
                    SearchEditingList(searchConditions: $searchConditions, SearchActionItemIcon: "mappa", SearchActionItemText: "mappa展")
                        .tag(0)
                }
                
                //                趣味タグ
                ScrollView{
                    SearchEditingList(searchConditions: $searchConditions, SearchActionItemIcon: "mappa", SearchActionItemText: "mappa展")
                }
                .tag(1)
                
                //                ハッシュタグ
                ScrollView{
                    SearchEditingList(searchConditions: $searchConditions, SearchActionItemIcon: "hashtag", SearchActionItemText: "ハッシュタグ")
                }
                .tag(2)
                
                //                場所
                ScrollView{
                    SearchEditingList(searchConditions: $searchConditions, SearchActionItemIcon: "mappin", SearchActionItemText: "東京")
                }
                .tag(3)
                
                //                ユーザー
                ScrollView{
                    SearchEditingList(searchConditions: $searchConditions, SearchActionItemIcon: "takahashiImage", SearchActionItemText: "高橋良汰")
                }
                .tag(4)
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        
    }
}




struct SearchEditingList: View {
    @Binding var searchConditions: [(image: String, text: String)]
    
    @State var SearchActionItemIcon: String
    
    @State var SearchActionItemText: String
    
    var body: some View{
        
        
        ForEach(0..<30) { itemcount in
            Button(action: {
                searchConditions += [(image: SearchActionItemIcon, text: SearchActionItemText)]
            }) {
                SearchActionItem(SearchAcrionItemIcon: SearchActionItemIcon,SearchAcrionItemtext: SearchActionItemText,  searchConditions: $searchConditions)
            }
            
        }
        
    }
}



struct SearchEditingView_Previews: PreviewProvider {
    
    @State static var searchConditions = [(image: "", text: "")]
    
    static var previews: some View {
        SearchEditingView(searchConditions: $searchConditions)
    }
}
