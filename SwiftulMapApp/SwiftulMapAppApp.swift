//
//  SwiftulMapAppApp.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 24.01.2025.
//

import SwiftUI

@main
struct SwiftulMapAppApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
