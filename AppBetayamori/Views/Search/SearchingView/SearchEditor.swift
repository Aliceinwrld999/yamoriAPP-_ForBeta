//
//  SearchEditor.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/11.
//

import SwiftUI

struct SearchEditor: View {
    private let SearchConditionsType = ["すべて","趣味タグ", "ハッシュタグ", "場所", "ユーザー"]
    
    @State private var selection = 0
    
    @State var searchConditions: [(image: String, text: String)] = [(image: "", text: "")]
    
    
    var body: some View {
        VStack{
            ScrollViewReader { proxy in
                HStack{
                    Spacer()
                    ForEach(0..<self.SearchConditionsType.count) { num in
                        Button(action: {
                            withAnimation {
                                selection = num
                            }}){
                                
                                if selection == num {
                                    Text(SearchConditionsType[num])
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.primary)
                                } else {
                                    Text(SearchConditionsType[num])
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
                        SearchActionItem(SearchAcrionItemIcon: "mappa", searchConditions: $searchConditions)
                        
                    }
                    Spacer()
                }
                .tag(0)
                
                
                ScrollView{
                    ForEach(0..<30) { itemcount in
                        SearchActionItem(SearchAcrionItemIcon: "", searchConditions: $searchConditions)
                    }
                    Spacer()
                }
                
                .tag(1)
                
                
                ScrollView{
                    ForEach(0..<30) { itemcount in
                        SearchActionItem(SearchAcrionItemIcon: "hashtag", searchConditions: $searchConditions)
                    }
                    Spacer()
                }
                
                .tag(2)
                
                
                ScrollView{
                    ForEach(0..<30) { itemcount in
                        SearchActionItem(SearchAcrionItemIcon: "mappin", searchConditions: $searchConditions)
                    }
                    Spacer()
                }
                
                .tag(3)
                
                
                ScrollView{
                    ForEach(0..<30) { itemcount in
                        SearchActionItem(SearchAcrionItemIcon: "shigetaImage", searchConditions: $searchConditions)
                    }
                    Spacer()
                }
                
                .tag(4)
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct SearchEditor_Previews: PreviewProvider {
    static var previews: some View {
        SearchEditor()
    }
}
