//
//  SearchTop.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/17.
//

import SwiftUI
import PartialSheet


struct SearchTop: View {
    
    @State var searchText = ""
    @State private var TextFieldState = false
    
    @State var searchConditions: [(image: String, text: String)] = []
    
    var body: some View {
        
        NavigationView{
            ZStack{
                VStack{
                    
                    if TextFieldState {
                        
                        SearchEditingView(searchConditions: $searchConditions)
                    } else {
                        VStack{
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
                                                        SearchActionItem(SearchAcrionItemIcon: searchConditions[num].image,
                                                                         SearchAcrionItemtext: searchConditions[num].text,
                                                                         searchConditions: $searchConditions)
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
                            if searchConditions.count == 0 {
                                SearchTopAll()
                            } else {
                                SearchResultTop()
                            }
                        }
                    }
                }
                
            }
            
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
            .toolbar {
                ToolbarItem(placement: .principal){
                    HStack{
                        if TextFieldState || searchConditions.count > 0 {
                            Button(action: {self.TextFieldState = false}){
                                Image(systemName: "chevron.backward")
                                    .padding()
                                    .foregroundColor(Color.black)
                            }
                        }
                        
                        TextField("🔍検索", text: $searchText
                                  , onEditingChanged: { begin in
                            if begin {
                                self.TextFieldState = true
                            }}
                                  ,onCommit: {
                            
                            self.TextFieldState = false
                        })
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 300)
                        
                        if TextFieldState {
                            NavigationLink(destination: SearchResultTop()){
                                Text("検索")
                            }
                        }
                    }
                }
            }
            
        }
        .addPartialSheet()
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}


struct SearchTop_Previews: PreviewProvider {
    static var previews: some View {
        SearchTop()
            .environmentObject(PartialSheetManager())
            .previewDevice("iPhone 12 Pro")
    }
}
