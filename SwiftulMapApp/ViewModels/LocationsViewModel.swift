//
//  LocationsViewModel.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 24.01.2025.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        self.locations = LocationsDataService.locations
    }
}
