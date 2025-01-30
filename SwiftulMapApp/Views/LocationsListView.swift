//
//  LocationsListView.swift
//  SwiftulMapApp
//
//  Created by Danut Popa on 25.01.2025.
//

import SwiftUI

struct LocationsListView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var searchText = ""
    
    var filteredLocations: [Location] {
        if searchText.isEmpty {
            vm.locations
        } else {
            vm.locations.filter { location in
                location.name.localizedStandardContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredLocations) { location in
                    Button {
                        vm.showNextLocation(location: location)
                    } label: {
                        listRowView(location: location)
                    }
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)
            .searchable(text: $searchText, prompt: "Search locations")
            .navigationTitle("Locations")
        }
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationsViewModel())
}

extension LocationsListView {
    
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .clipShape(.rect(cornerRadius: 10))
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
