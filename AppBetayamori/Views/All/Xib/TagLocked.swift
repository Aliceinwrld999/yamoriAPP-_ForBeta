//
//  TagLocked.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/02/18.
//

import SwiftUI

struct TagLocked: View {
    @State var tagState:Bool = true
    @State var tagLockState: Bool = true
    @State var color: Color
    @State var text : String
    @State var size : Font
    var body: some View {
        
        
        if tagState == true {
            if tagLockState == true{
                Button {
                    self.tagLockState.toggle()
                } label: {
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
                        
                        Image(systemName:"lock.circle")
                            .background(Color.white)
                            .clipShape(Circle())
                            .foregroundColor(.black)
                            .shadow(color: .white, radius: 3, x: 0, y: 0)
                            .offset(x: 8, y: -5)
                    }
                }
                
            }else{
                
                Button {
                    self.tagLockState.toggle()
                } label: {
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
                    }
                }
            }
        }
    }
}




struct TagLocked_Previews: PreviewProvider {
    static var previews: some View {
        TagLocked(color: .blue, text: "こんにちわ", size: .callout)
    }
}
