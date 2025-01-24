//
//  LocationsView.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 24.01.2025.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Text(location.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
