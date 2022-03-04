//
//  SearchUserViewSearch.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/27.
//

import SwiftUI

struct SearchUserViewSearch: View {
    
    
    @State private var searchWord = ""
    
    var body: some View {
        VStack{
            
            TextField("ユーザーを検索する", text: $searchWord)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            ScrollView{
                VStack(alignment: .leading){
                    Text("知り合いかも")
                        .padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHGrid(rows: Array(repeating: .init(.fixed(50)), count: 3), alignment: .center, spacing: 10){
                            ForEach(0..<15) { num in
                                SearchUserItem()
                            }
                        }
                    }
                }
                .padding(.vertical)
                
                VStack(alignment: .leading){
                    Text("おすすめユーザー")
                        .padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHGrid(rows: Array(repeating: .init(.fixed(50)), count: 3), alignment: .center, spacing: 10){
                            ForEach(0..<15) { num in
                                SearchUserItem()
                            }
                        }
                    }
                }
                .padding(.vertical)
                
                VStack(alignment: .leading){
                    Text("公式ユーザー")
                        .padding()
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHGrid(rows: Array(repeating: .init(.fixed(50)), count: 3), alignment: .center, spacing: 10){
                            ForEach(0..<15) { num in
                                SearchUserItem()
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

struct SearchUserViewSearch_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserViewSearch()
    }
}
