//
//  LocationsView.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    locationButton
                }
                LocationsPreviewView(location: vm.mapLocation)
                    .shadow(radius: 10)
                    .padding(5)
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationButton: some View {
        LocationButton(.currentLocation) {
            
        }
        .labelStyle(.iconOnly)
        .cornerRadius(10)
        .symbolVariant(.fill)
        .foregroundColor(.white)
        .padding(.trailing, 66)
        .offset(y: 78)
        .shadow(radius: 10)
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
