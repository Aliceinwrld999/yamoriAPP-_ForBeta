//
//  MyprofileSetting.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/17.
//

import SwiftUI

struct OtherUserprofileSetting: View {
    
    @State private var ShowingOtherUserProfileSetting: Bool = false
    
    
    var body: some View {
        Button(action: {self.ShowingOtherUserProfileSetting.toggle()}){
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .scaledToFill()
                .frame(width: 15, height: 15)
                .foregroundColor(Color.black)
                .font(.system(size: 18, weight: .bold, design: .serif))
        }.sheet(isPresented: $ShowingOtherUserProfileSetting) {
            OtherUserProfileSettingView()
        }
    }
}


struct OtherUserProfileSettingView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View{
        NavigationView{
        VStack{
            Text("他ユーザー設定")
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    
                }){
                    Image(systemName: "multiply")
                        .foregroundColor(Color.primary)
                }
            }
        }
        }
    }
}

struct OtherUserprofileSetting_Previews: PreviewProvider {
    static var previews: some View {
        OtherUserprofileSetting()
    }
}
