//
//  Tag.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/20.
//

import SwiftUI

struct TagMedium: View {
    
    @State var tagState:Bool = false
    @State var tagMediumTapState: Bool = false
    @State var color: Color
    @State var name: String = "乃木坂46"
    
    
    var body: some View {
        
        if tagMediumTapState == false {
            Text(name)
                .font(.callout)
                .foregroundColor(color)
                .padding(EdgeInsets(
                    top: 5,
                    leading: 10,
                    bottom:5,
                    trailing: 10
                ))
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(color, lineWidth: 2)
                )
            
        } else {
            Button(action: {self.tagState.toggle() }){
                if tagState == false {
                    Text(name)
                        .font(.callout)
                        .foregroundColor(color)
                        .padding(EdgeInsets(
                            top: 5,
                            leading: 10,
                            bottom:5,
                            trailing: 10
                        ))

                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                } else {
                    Text("\(name)")
                        .font(.callout)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(
                            top: 5,
                            leading: 10,
                            bottom:5,
                            trailing: 10
                        ))
                        .background(color)
                        .cornerRadius(30)
                    
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                }
            }
        }
        
    }
}

struct TagMedium_Previews: PreviewProvider {
    static var previews: some View {
        TagMedium(color: .red)
    }
}
