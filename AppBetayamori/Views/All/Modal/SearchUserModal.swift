//
//  SearchUserModal.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/11.
//

import SwiftUI


//struct ShowingSearchUserModal: View {
//
//    @State private var showingSearchUserModal: Bool = false
//
//    var body: some View {
//
//        Button(action:{self.showingSearchUserModal.toggle()}) {
//            Image(systemName: "person.badge.plus")
//                .foregroundColor(Color.black)
//        }.sheet(isPresented: $showingSearchUserModal) {
//            SearchUserModal()
//        }
//
//    }
//}

struct SearchUserModal: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    @State var abc: Bool = false
    
    @State var viewSelection = 1
    
    var body: some View {
        //        NavigationView{
        VStack{
            VStack{
                HStack{
                    Spacer()
                    Button(action:{
                        withAnimation(){
                            viewSelection = 1
                        }
                    }){
                        Text("検索")
                        
                    }
                    Spacer()
                    Button(action:{
                        withAnimation(){
                            viewSelection = 2
                        }
                    }){
                        Text("QRコード")
                    }
                    Spacer()
                    
                }
                .padding(.top)
            }
            TabView(selection: $viewSelection) {
                SearchUserViewSearch().tag(1)
//                SearchUserViewQr().tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }
    }
}





struct SearchUserModal_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserModal()
    }
}
