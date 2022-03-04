//
//  SearchActionItem.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/31.
//

import SwiftUI

struct SearchActionItem: View {
    
    @State var SearchAcrionItemIcon: String
    @State var SearchAcrionItemtext = "mappa展"
    
    @Binding var searchConditions:[(image: String, text: String)]
    
    var body: some View{
        VStack{
//            Button(action: {
//                searchConditions.append(contentsOf: [SearchAcrionItemIcon])
//            }) {
                HStack{
                    Image(SearchAcrionItemIcon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    Text(SearchAcrionItemtext)
                        .font(.body)
                    Spacer()
                    
//                }
                
                
            }
            .foregroundColor(Color.primary)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        }
    }
}

//struct SearchActionItemHashTag: View {
//
//    @State private var imageUrl = "mappa"
//    @State private var text = "mappa展"
//
//    @Binding var searchConditions:[(image: String, text: String)]
//
//    var body: some View{
//        Button(action: {
//            searchConditions += [(image: imageUrl, text: text)]
//        }){
//            VStack{
//
//                HStack{
//                    Image("hashtag")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 50, height: 50)
//                        .padding(10)
//                        .clipShape(Circle())
//                        .overlay(
//                            Circle()
//                                .stroke(Color.gray, lineWidth: 1)
//                        )
//
//                    Text(text)
//                        .font(.title)
//                    Spacer()
//
//                }
//            }
//            .padding()
//
//        }
//    }
//}

struct SearchActionItem_Previews: PreviewProvider {
    
    @State static var seachConditions = [(image: "", text: "")]
    
    static var previews: some View {
        SearchActionItem(SearchAcrionItemIcon: "", searchConditions: $seachConditions)
    }
}
