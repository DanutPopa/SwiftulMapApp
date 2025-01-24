//
//  LocationsView.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 24.01.2025.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        Map(position: $vm.mapPosition)
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
