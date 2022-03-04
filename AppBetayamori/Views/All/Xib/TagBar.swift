//
//  TagBar.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI

struct TagBar: View {
    
    private var tagName = [
        "乃木坂46",
        "ユニバーサルスタジオジャパン" ,
        "ディズニーランド",
        "評判屋 塩焼きそば",
        "ありがとううさぎ",
        "乃木坂46",
        "ユニバーサルスタジオジャパン" ,
        "ディズニーランド",
        "評判屋 塩焼きそば",
        "乃木坂46",
        "ユニバーサルスタジオジャパン" ,
        "ディズニーランド",
        "評判屋 塩焼きそば"
    ]
    
    var body: some View {
        
//        var rows: [GridItem] = Array(repeating: .init(.flexible(minimum: 30, maximum: 50)), count: 1)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(0..<10) {(row: Int) in
                    
                    if row % 2 == 0{
                        TagMedium(tagMediumTapState: true, color: tagCategolyList["music"]!, name: tagName[row])
                    }
                    
                }
            }
            .padding(1)
                HStack{
                    ForEach(0..<10) {(row: Int) in
                        
                        if row % 2 != 0{
                            TagMedium(tagMediumTapState: true, color: tagCategolyList["music"]!, name: tagName[row])
                        }
                    }
                }
                .padding(1)
        }
            
            
            //            VStack(spacing: -10){
            //                LazyHGrid(rows: rows){
            //                    ForEach(0..<10) {(row: Int) in
            //
            //                        if row % 2 == 0{
            //                            TagMedium(tagMediumTapState: true, color: tagCategolyList["music"]!, name: tagName[row])
            //                        }
            //                    }
            //
            //                }
            //                LazyHGrid(rows: rows){
            //                    ForEach(0..<10) {(row: Int) in
            //                        if row % 2 != 0{
            //                            TagMedium(tagMediumTapState: true, color: tagCategolyList["music"]!, name: tagName[row])
            //                        }
            //                    }
            //
            //                }
            //            }
            
            
            //            VStack{
            //
            //                HStack{
            //                    ForEach(0..<10) {(row: Int) in
            //                        TagMedium(tagMediumTapState: true)
            //                    }
            //
            //                }
            //                .padding(EdgeInsets(
            //                    top: 5, leading: 0, bottom: 5, trailing: 0))
            //                HStack{
            //                    ForEach(0..<10) {(row: Int) in
            //                        TagMedium(tagMediumTapState: true)
            //                    }
            //                }
            //                .padding(EdgeInsets(
            //                    top: 5, leading: 0, bottom: 5, trailing: 0))
            //
            //            }
        
    }
}

struct TagBar_Previews: PreviewProvider {
    static var previews: some View {
        TagBar()
    }
}
