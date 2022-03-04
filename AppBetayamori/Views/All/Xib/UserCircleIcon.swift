//
//  UserCircleIcon.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/17.
//

import SwiftUI

struct UserCircleIcon: View {
    
    @State var imageUrl = "ProfileImage"
    
    var body: some View {
        Image(imageUrl)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            
        
       
    }
}

struct UserCircleIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserCircleIcon()
    }
}
