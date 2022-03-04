//
//  mapClass.swift
//  maps
//
//  Created by Takashi Shigeta on 2022/01/18.
//
import Foundation
import SwiftUI
import MapKit

struct OpenMaps {
    
    /// - Parameter coordinate: coordinate of destination
    static func presentActionSheetwithMapOption(latitude: CLLocationDegrees , longitude: CLLocationDegrees) {
        
        
        // Google MAP URL
        let googleURL = "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=driving"
        let googleItem = ("Google Maps", URL(string:googleURL)!)
        
        // Apple MAP URL
        let appleURL = "maps://?daddr=\(latitude),\(longitude)"
        
        var installedNavigationApps = [("Apple Maps", URL(string:appleURL)!)]
        
        if UIApplication.shared.canOpenURL(googleItem.1) {
            installedNavigationApps.append(googleItem)
        }
        
        if installedNavigationApps.count == 1 {
            if let app = installedNavigationApps.first {
                self.openMap(app: app)
            }
            return
        }
        
        // アップル純正もしくはgoogle mapsがダウンロードされていれば選択画面にいくよ
        let alert = UIAlertController(title: nil,
                                      message: "Choose application",
                                      preferredStyle: .actionSheet)
        
        for app in installedNavigationApps {
            let button = UIAlertAction(title: app.0,
                                       style: .default, handler: { _ in
                self.openMap(app: app)
            })
            alert.addAction(button)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        
    }
    // 選択したほうをおおおおおおおおおお開く
    
    /// - Parameter app: Selected Map Application Details
    private static func openMap(app: (String, URL)) {
        guard UIApplication.shared.canOpenURL(app.1) else {
            debugPrint("Unable to open the map.")
            return
        }
        UIApplication.shared.open(app.1, options: [:], completionHandler: nil)
    }
}
