//
//  TagDelete.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/01/27.
//

import SwiftUI

struct TagDelete: View {
    @State var tagState:Bool = false
    @State var color: Color
    @State var text : String
    @State var size : Font
    @State var tapState:Bool = false
    var body: some View {
        
        
        

            if tagState == false {
                
                
                ZStack(alignment: .topTrailing) {
                    
                    Text(text)
                        .font(size)
                        .foregroundColor(color)
                        .padding(EdgeInsets(
                            top: 3,
                            leading: 7,
                            bottom:3,
                            trailing: 7
                        ))
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                    
                    Image(systemName:"xmark.circle")
                        .background(Color.white)
                        .clipShape(Circle())
                        .foregroundColor(.black)
                        .shadow(color: .white, radius: 3, x: 0, y: 0)
                        .offset(x: 8, y: -5)
                }
                
            } else {
                
                
                ZStack(alignment: .topTrailing) {
                    
                    Text(text)
                        .font(size)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(
                            top: 3,
                            leading: 7,
                            bottom:3,
                            trailing: 7
                        ))
                        .background(color)
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                    
                    
                    Image(systemName:"xmark.circle")
                        .background(Color.white)
                        .clipShape(Circle())
                        .foregroundColor(.black)
                        .shadow(color: .white, radius: 3, x: 0, y: 0)
                        .offset(x: 8, y: -5)
                    
                }
                
                
            }
            
    }
}
            
struct TagDelete_Previews: PreviewProvider {
    static var previews: some View {
        TagDelete(tagState: false, color: .red, text: "sup", size: .title)
    }
}
