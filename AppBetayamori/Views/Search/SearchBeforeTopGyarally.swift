//
//  SearchBeforeTop.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import SwiftUI
import PartialSheet

struct SearchBeforeTopGyarally: View {
    
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    var body: some View {
        ScrollView{
            
            LazyVGrid(columns: Array(repeating: GridItem(), count: 3)) {
                ForEach(0..<eventDemoDataArray.count) {(row: Int) in
                    
                    SearchEventItem(eventData: eventDemoDataArray[row])
                    
                }
            }
        }
    }
}

struct SearchBeforeTop_Previews: PreviewProvider {
    static var previews: some View {
        SearchBeforeTopGyarally()
            .environmentObject(PartialSheetManager())
            .previewDevice("iPhone 12 Pro")
    }
}
