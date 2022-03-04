//
//  AppBetayamoriApp.swift
//  AppBetayamori
//
//  Created by 高橋良汰 on 2022/03/04.
//

import SwiftUI
import PartialSheet

@main
struct AppBetayamoriApp: App {
    
    let sheetManager: PartialSheetManager = PartialSheetManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                 .environmentObject(sheetManager)
                
        }
    }
}
