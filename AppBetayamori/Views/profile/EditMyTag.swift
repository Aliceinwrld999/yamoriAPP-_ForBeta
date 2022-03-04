//
//  EditMyTag.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/04.
//

import SwiftUI

struct EditMyTag: View {
    
    
    enum ViewType{
        case origin, setting, lock
    }
    
    enum WhosTagState{
        case me, others
    }
    
    @State private var tagCount:Int = 35
    @State var viewType: ViewType = .origin
    var whosTagState : WhosTagState = .me
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                
                VStack{
                    HStack{
                        Text("趣味タグ")
                            .font(.title2)
                        Text("\(tagCount)/50")
                    }
                   
                    
                    switch viewType {
                    case .origin:
                        
                        FlowLayoutView( whosTagArray: MyTagDataArray)
                    case .setting:
                        FlowDeleteView()
                    case .lock:
                        FlowLockedView()
                        
                    }
                    
                }
                
            }
            if whosTagState == .me{
                VStack {
                    Spacer()
                    HStack {
                        Button {
                            if viewType == .origin{
                                viewType = .setting
                            }else if viewType == .setting{
                                viewType = .lock
                            }else{
                                viewType = .setting
                            }
                        } label: {
                            if viewType == .origin{
                                Image(systemName: "pencil")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24))
                            }else if viewType == .setting{
                                Image(systemName: "lock")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24))
                            }else{
                                Image(systemName: "pencil")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24))
                            }
                                        
                            
                        }
                        
                        .frame(width: 60, height: 60)
                        .background(Color.orange)
                        .cornerRadius(30.0)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0))

                
                        
                    }
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .principal){
                HStack{
                    UserCircleIcon()
                        .frame(width: 25, height: 25)
                    
                    Text("ユーザーの名前")
                }
            }
        }
        
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                if viewType == .origin{
                }else{
                    Button {
                        if viewType != .origin{
                            viewType = .origin
                        }
                        
                    } label: {
                        Text("完了")
                            .padding()
                            .foregroundColor(.blue)
                    }
                }
                
                
                
            }
        }
        
        
    }
}


struct EditMyTag_Previews: PreviewProvider {
    static var previews: some View {
        EditMyTag(whosTagState: .others)
    }
}
