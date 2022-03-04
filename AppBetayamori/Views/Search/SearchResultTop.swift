//
//  SearchResultTop.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/06.
//

import SwiftUI
import PartialSheet

struct SearchResultTop: View {
    
    var searchWord = "検索ワード"
    
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    enum searchViewChange {
        case gyarally, list
    }
    
    @State var searchViewChangeState: searchViewChange = .gyarally
    
    var body: some View {
        ScrollView{
            
            
                SearchConditions()
            
            PredictionWord()
                .padding()

            HStack{
                Spacer()
                Text("表示方法")
                Button(action: {withAnimation(.linear(duration: 0.1)) {searchViewChangeState = .gyarally}}){
                    if searchViewChangeState == .gyarally {
                        Text("ギャラリー")
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 5)
                            .background(Color.black)
                            .cornerRadius(30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    } else {
                        Text("ギャラリー")
                            .foregroundColor(Color.black)
                            .padding(.horizontal, 5)
                    }
                }
                
                Button(action: {withAnimation(.linear(duration: 0.1)) {searchViewChangeState = .list}}){
                    if searchViewChangeState == .list {
                        Text("リスト")
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 5)
                            .background(Color.black)
                            .cornerRadius(30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    } else {
                        Text("リスト")
                            .foregroundColor(Color.black)
                            .padding(.horizontal, 5)
                    }
                }
            }
            .font(.footnote)
            .padding()
            
            
            switch searchViewChangeState {
            case .gyarally:
                SearchBeforeTopGyarally()
            case .list:
                SearchBeforeTopList()
            }
        }
        .navigationTitle(searchWord)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SearchResultTop_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultTop()
            .environmentObject(PartialSheetManager())
    }
}
