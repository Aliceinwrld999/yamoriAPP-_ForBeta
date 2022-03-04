//
//  AearchBeforeTopList.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI

struct SearchBeforeTopList: View {
    var body: some View {
        ScrollView{
            
            VStack(alignment: .center){
                
                
                ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                    SearchListItem(eventData: eventDemoDataArray[row])
                        .padding(.bottom, 30)
                }
            }
        }
    }
}
struct SearchBeforeTopList_Previews: PreviewProvider {
    static var previews: some View {
        SearchBeforeTopList()
            .previewDevice("iPhone 12 Pro")
    }
}
