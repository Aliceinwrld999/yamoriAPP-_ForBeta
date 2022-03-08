//
//  SearchConditionItem.swift
//  AppBetayamori
//
//  Created by 高橋良汰 on 2022/03/08.
//

import SwiftUI

struct SearchConditionItem: View {
    
    var itemIcon = "mappa"
    var itemText = "mappa展"
    
    var body: some View {
        VStack{
            Image(itemIcon)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 1)
                )
            Text(itemText)
                .font(.footnote)
                .frame(width: 70)
                .lineLimit(2)
                .foregroundColor(Color.primary)
        }
        .padding()
    }
}

struct SearchConditionItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchConditionItem()
    }
}
