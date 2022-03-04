//
//  SearchView.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/06.
//

import SwiftUI

struct SearchView: View {
    
    enum SearchType {
        case person, day, jenre, hashTag, place
    }
    
    @State var searchType: SearchType = .person
    
    var body: some View {
        
        VStack{
            
            HStack{
                Group{
                    Spacer()
                    Button(action: {searchType = .person}){
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .foregroundColor(searchType == .person ? .black : .gray)
                        
                    }
                    Spacer()
                    Button(action: {searchType = .day}){
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .foregroundColor(searchType == .day ? .black : .gray)
                    }
                }
                Group{
                    Spacer()
                    Button(action: {searchType = .jenre}){
                        Image("WantToGoIcon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .foregroundColor(searchType == .jenre ? .black : .gray)
                    }
                    Spacer()
                    Button(action: {searchType = .hashTag}){
                        Image(systemName: "number")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .foregroundColor(searchType == .hashTag ? .black : .gray)
                    }
                    Spacer()
                    Button(action: {searchType = .place}){
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35, height: 35)
                            .foregroundColor(searchType == .place ? .black : .gray)
                    }
                    Spacer()
                }
                
                
                
            }
//            .foregroundColor(Color.black)
            
            switch searchType {
            case .person:
                Text("人検索")
            case .day:
                Text("日付検索")
            case .jenre:
                Text("ジャンル検索")
            case .hashTag:
                Text("ハッシュタグ検索")
            case .place:
                Text("場所検索")
            }
            
            
            
        }
        
        .navigationBarTitle("検索")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
