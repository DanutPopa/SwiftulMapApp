//
//  Location.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 24.01.2025.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome
        // id = "ColosseumRome"
        name + cityName
    }
}
