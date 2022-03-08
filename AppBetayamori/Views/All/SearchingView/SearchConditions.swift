//
//  SearchConditions.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/22.
//

import SwiftUI

struct SearchConditions: View {
    
    @State var searchConditions: [(image: String, text: String)] = []
    
    var body: some View {
        
        if searchConditions.count > 0 {
            
            VStack(alignment: .leading){
                Text("検索条件")
                    .font(.footnote)
                    .padding(.top, 10)
                    .padding(.leading,20)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        
                        ForEach(0..<self.searchConditions.count, id: \.self) { num in
                            VStack{
                                ZStack(alignment: .topTrailing){
                                    SearchConditionItem(itemIcon: searchConditions[num].image,
                                                     itemText: searchConditions[num].text)
                                    Button(action: {searchConditions.removeFirst()}){
                                        Image(systemName: "multiply.circle")
                                            .foregroundColor(Color.black)
                                    }
                                }
                            }.padding(.horizontal)
                        }
                    }
                }
                
                Divider()
            }
        }
    }
}

struct SearchConditions_Previews: PreviewProvider {
    static var previews: some View {
        SearchConditions()
    }
}
