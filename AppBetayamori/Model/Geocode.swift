//
//  GeocodeMap.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/01/19.
//

import Foundation
import MapKit
import SwiftUI


struct GeocodeMap{
    
    func Geocode(address: String){
        
        CLGeocoder().geocodeAddressString(address) { placemarks, error in
            
            if let lat = placemarks?.first?.location?.coordinate.latitude,
                let lng = placemarks?.first?.location?.coordinate.longitude {
                print("succsess")
                
//
                OpenMaps.presentActionSheetwithMapOption(latitude: lat, longitude: lng)
            }
            
        }
        
    }
}
