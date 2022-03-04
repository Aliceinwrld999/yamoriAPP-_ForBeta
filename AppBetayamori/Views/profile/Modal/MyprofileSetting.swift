//
//  MyprofileSetting.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/17.
//

import SwiftUI

struct MyprofileSetting: View {
    
    @State private var ShowingMyProfileSetting: Bool = false
    
    
    var body: some View {
        Button(action: {self.ShowingMyProfileSetting.toggle()}){
            Image(systemName: "slider.horizontal.3")
                .resizable()
                .scaledToFill()
                .frame(width: 15, height: 15)
                .foregroundColor(Color.black)
                .font(.system(size: 18, weight: .bold, design: .serif))
        }.sheet(isPresented: $ShowingMyProfileSetting) {
            MyProfileSettingView()
        }
    }
}


struct MyProfileSettingView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View{
        NavigationView{
        VStack{
            Text("プロフィール設定")
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

struct MyprofileSetting_Previews: PreviewProvider {
    static var previews: some View {
        MyprofileSetting()
    }
}
