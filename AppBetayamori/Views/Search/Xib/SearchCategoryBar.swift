//
//  SearchCategoryBar.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/07.
//

import SwiftUI

struct SearchCategoryBar: View {
    
    @State private var selection = 0
    
    private let categoryList = [
        (categoryName: "すべて", viewName: ""),
        (categoryName: "オンライン", viewName: ""),
        (categoryName: "ミュージック", viewName: ""),
        (categoryName: "映画", viewName: ""),
        (categoryName: "テレビ", viewName: ""),
        (categoryName: "漫画", viewName: "")
    ]
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(0..<categoryList.count) { num in
                ZStack {
                    //                    categoryList[num].categoryName
                    Text(categoryList[num].categoryName)
                }
                .tag(num)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        
    }
}

struct SearchCategoryBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryBar()
    }
}
