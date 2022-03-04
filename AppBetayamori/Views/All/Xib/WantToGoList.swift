//
//  WantToGoList.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/01.
//

import SwiftUI

struct WantToGoList: View {
    
    var togatherPeopleCount = 2
    
    @State var userCountState: Bool = false
    
    
    var body: some View {
        HStack(alignment: .bottom){
            Image("WantToGoIcon")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            
            UserCircleIcon()
                .frame(width: 40, height: 40)
                .shadow(color: .black, radius: 1)
            
            UserCircleIcon()
                .frame(width: 40, height: 40)
                .padding(.leading, -15)
                .shadow(color: .black, radius: 1)
            
            if userCountState == true {
                Text("\(togatherPeopleCount)人")
            }
        }
    }
}

struct WantToGoList_Previews: PreviewProvider {
    static var previews: some View {
        WantToGoList()
            .previewDevice("iPhone 12 Pro")
    }
}
