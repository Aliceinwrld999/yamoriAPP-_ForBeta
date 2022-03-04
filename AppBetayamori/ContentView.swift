//
//  ContentView.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/17.
//

import SwiftUI
import PartialSheet

class DeviceSize: ObservableObject {
    @Published  var width: CGFloat = 300
    @Published var height: CGFloat = 500
}


struct ContentView: View {
    
    
    @EnvironmentObject var deviceSize: DeviceSize
    
//    let sheetManager: PartialSheetManager = PartialSheetManager()
    
    init(){
        //List全体の背景色の設定
        UITableView.appearance().backgroundColor = UIColor.white    }
    
    
    var body: some View {
        
        
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                NavigationView{
                    
                    ZStack(alignment: .topTrailing){
                        TabView {
                            SearchTop()
                                .tabItem {
                                    Image(systemName: "magnifyingglass")
                                }
                            
                            Myprofile(myUserDate: UserDataArray[0])
                                .tabItem {
                                    Image(systemName: "person")
                                }
                            
                        }.accentColor(.orange)
                            .onAppear {
                                UITableView.appearance().separatorColor = .clear
                            }
                    }
                }
            }.ignoresSafeArea()
            
                .onAppear{
                    
                    deviceSize.width = geometry.size.width
                    deviceSize.height = geometry.size.height
                }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PartialSheetManager())
    }
}
